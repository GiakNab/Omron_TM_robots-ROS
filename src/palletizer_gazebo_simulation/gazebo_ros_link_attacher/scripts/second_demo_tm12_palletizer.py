#!/usr/bin/env python

import sys
import copy
import rospy, tf, rospkg
import math
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import numpy as np
from math import pi
from std_msgs.msg import String
from GazeboSpawner import CubeSpawner, SlipsheetSpawner
from OmronTMRobot import TMRobotMoveGroupPy
from moveit_commander.conversions import pose_to_list
from gazebo_msgs.srv import DeleteModel, SpawnModel, GetModelState
from gazebo_ros_link_attacher.srv import Attach, AttachRequest, AttachResponse


def get_quaternion_from_euler(roll, pitch, yaw):
  """
  Convert an Euler angle to a quaternion.
  Input
    :param roll: The roll (rotation around x-axis) angle in radians.
    :param pitch: The pitch (rotation around y-axis) angle in radians.
    :param yaw: The yaw (rotation around z-axis) angle in radians.
  Output
    :return qx, qy, qz, qw: The orientation in quaternion [x,y,z,w] format
  """
  qx = np.sin(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) - np.cos(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
  qy = np.cos(roll/2) * np.sin(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.cos(pitch/2) * np.sin(yaw/2)
  qz = np.cos(roll/2) * np.cos(pitch/2) * np.sin(yaw/2) - np.sin(roll/2) * np.sin(pitch/2) * np.cos(yaw/2)
  qw = np.cos(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
 
  return [qx, qy, qz, qw]

def get_homogen_transform (d, theta, phi, psi):
  ''' get the 4x4 T matrix to trasform a point between two reference frames '''
  Rx = np.array([[1, 0, 0],[0, math.cos(theta), -math.sin(theta)],[0, math.sin(theta), math.cos(theta)]])
  Ry = np.array([[math.cos(phi), 0, math.sin(phi)],[0, 1, 0],[-math.sin(phi), 0, math.cos(phi)]])
  Rz = np.array([[math.cos(psi), -math.sin(psi), 0],[math.sin(psi), math.cos(psi), 0],[0, 0, 1]])
  R = Rz.dot(Ry).dot(Rx)
  T = np.empty((4, 4))
  T[:3, :3] = R
  T[:3, 3] = d
  T[3, :] = [0, 0, 0, 1]
  return T
 

def main():
  try:   
    #Istantiate the object 'test' from class TMRobotMoveGroupPy, default planner ="RRTConnect"
    tm12 = TMRobotMoveGroupPy("tm12_arm", "RRTConnect")
    grasping_group="tm12_arm"

    tm12.move_group.allow_replanning(True)
    tm12.move_group.set_planning_time(10) #seconds

    planning_frame = tm12.move_group.get_planning_frame()
    
    # call all the Gazebo services to spawn and attach cubes
    print("Waiting for gazebo services...")

    rospy.wait_for_service("/gazebo/delete_model")
    rospy.wait_for_service("/gazebo/spawn_urdf_model")
    rospy.wait_for_service("/gazebo/get_model_state")

    rospy.loginfo("Creating ServiceProxy to /link_attacher_node/attach")
    attach_srv = rospy.ServiceProxy('/link_attacher_node/attach',
                                    Attach)
    attach_srv.wait_for_service()
    rospy.loginfo("Created ServiceProxy to /link_attacher_node/attach")

    detach_srv = rospy.ServiceProxy('/link_attacher_node/detach',
                                    Attach)
    detach_srv.wait_for_service()
    rospy.loginfo("Created ServiceProxy to /link_attacher_node/detach")

    r = rospy.Rate(15)

    # define the cube to spawn
    name = ["Part0", "Part1", "Part2", "Part3","Part4", "Part5","Part6", "Part7", "Part8", "Part9"]

    #offset here
    z_offset = 0.785 
    tcp_offset = [0.05, -0.05, -0.13]

    #go to Idle Position
    IdlePosition = [math.radians(14.42), math.radians(-43.8), math.radians(108.61), math.radians(24.74), math.radians(88.85)
                , math.radians(15.18)]
    tm12.joint_state_move(IdlePosition)

    cs = CubeSpawner(name[0])
    succeded = cs.spawnModel()
    print(succeded)

    ss = SlipsheetSpawner(name[5])
    succeded2 = ss.spawnModel()
    print(succeded2)

    #go to ApproxPointPB1
    AproxPointPB1 = [0.622 - tcp_offset[0], -0.067 - tcp_offset[1] , 0.488 + (- tcp_offset[2]) + z_offset, math.radians(180), 0, 0] #absolute
    AproxPointPB1quat = get_quaternion_from_euler(AproxPointPB1[3], AproxPointPB1[4], AproxPointPB1[5])

    ApproxPointPB1 = geometry_msgs.msg.Pose()
    ApproxPointPB1.position.x = AproxPointPB1[0]
    ApproxPointPB1.position.y = AproxPointPB1[1]
    ApproxPointPB1.position.z = AproxPointPB1[2]
    ApproxPointPB1.orientation.x = AproxPointPB1quat[0]
    ApproxPointPB1.orientation.y = AproxPointPB1quat[1]
    ApproxPointPB1.orientation.z = AproxPointPB1quat[2]
    ApproxPointPB1.orientation.w = AproxPointPB1quat[3]

    tm12.pose_state_move(ApproxPointPB1)   

    #go to ApproxPointPB0
    AproxPointPB0 = [0, 0, 0.150, 0, 0, 0] #relative
    ApproxPointPB0 = ApproxPointPB1
    ApproxPointPB0.position.z -= AproxPointPB0[2]

    tm12.pose_state_move(ApproxPointPB0)

    # go to PickBoxes position
    PickBoxes = [1.066 - tcp_offset[0], 0.386 - tcp_offset[1], 0.1532 + (- tcp_offset[2]) + z_offset,  math.radians(180), 0, 0] #PickBoxes (PB)
    PickBoxesquat = get_quaternion_from_euler(PickBoxes[3], PickBoxes[4],PickBoxes[5])

    PickB = geometry_msgs.msg.Pose()
    PickB.position.x = PickBoxes[0]
    PickB.position.y = PickBoxes[1]
    PickB.position.z = PickBoxes[2]
    PickB.orientation.x = PickBoxesquat[0]
    PickB.orientation.y = PickBoxesquat[1]
    PickB.orientation.z = PickBoxesquat[2]
    PickB.orientation.w = PickBoxesquat[3]

    tm12.pose_state_move(PickB)
    print(PickB)

    #grab the box with the vaccum gripper
    req = AttachRequest()
    req.model_name_1 = name[0]
    req.link_name_1 = "base_link"
    req.model_name_2 = "robot"
    req.link_name_2 = "wrist_3_link"
    attach_srv.call(req)

    DepartPointPB0 = [0, 0, 0.150, 0, 0, 0] #relative
    DeppartPointPB0 = PickB
    DeppartPointPB0.position.z += DepartPointPB0[2] 

    tm12.pose_state_move(DeppartPointPB0)

    DepartPointPB1 = [0.75 - tcp_offset[0], 0.265 - tcp_offset[1], 0.508 + (- tcp_offset[2]) + z_offset, math.radians(180), 0, 0] #absolute
    DepartPointPB1quat = get_quaternion_from_euler(DepartPointPB1[3], DepartPointPB1[4], DepartPointPB1[5])

    DeppartPointPB1 = geometry_msgs.msg.Pose()
    DeppartPointPB1.position.x = DepartPointPB1[0]
    DeppartPointPB1.position.y = DepartPointPB1[1]
    DeppartPointPB1.position.z = DepartPointPB1[2]
    DeppartPointPB1.orientation.x = DepartPointPB1quat[0]
    DeppartPointPB1.orientation.y = DepartPointPB1quat[1]
    DeppartPointPB1.orientation.z = DepartPointPB1quat[2]
    DeppartPointPB1.orientation.w = DepartPointPB1quat[3]

    tm12.pose_state_move(DeppartPointPB1)

    # Define From XML file (Aprox0/1 & Depart0/1 Points absolute and relative)
    AproxPoint1 = [0.430 - tcp_offset[0], 0.700 - tcp_offset[1], 0.300 - tcp_offset[2] + z_offset, math.radians(180), 0, 0] #absolute
    AproxPoint1quat = get_quaternion_from_euler(AproxPoint1[3], AproxPoint1[4], AproxPoint1[5])
    DepartPoint1 = AproxPoint1
    DepartPoint1quat = AproxPoint1quat
    
    ApproxPoint1 = geometry_msgs.msg.Pose()
    ApproxPoint1.position.x = AproxPoint1[0]
    ApproxPoint1.position.y = AproxPoint1[1]
    ApproxPoint1.position.z = AproxPoint1[2]
    ApproxPoint1.orientation.x = AproxPoint1quat[0]
    ApproxPoint1.orientation.y = AproxPoint1quat[1]
    ApproxPoint1.orientation.z = AproxPoint1quat[2]
    ApproxPoint1.orientation.w = AproxPoint1quat[3]

    DeppartPoint1 = ApproxPoint1

    #move to AproxPoint1 to place the boxes and slipsheet
    tm12.pose_state_move(ApproxPoint1) #ok
   
    AproxPoint0 = [0.050, 0.050, 0.200, 0, 0, 0] #relative
    DepartPoint0 = [0, 0, 0.300, 0, 0, 0] #relative

    DeppartPoint0 = DeppartPoint1
    DeppartPoint0.position.z += DepartPoint0[2]

     #move to AproxPoint1 to place the boxes and slipsheet using line movement
    ApproxPoint0 = geometry_msgs.msg.Pose()
    ApproxPoint0.position.x = AproxPoint1[0] -AproxPoint0[0]
    ApproxPoint0.position.y = AproxPoint1[1] -AproxPoint0[1]
    ApproxPoint0.position.z = AproxPoint1[2] -AproxPoint0[2]
    ApproxPoint0.orientation.x = AproxPoint1quat[0]
    ApproxPoint0.orientation.y = AproxPoint1quat[1]
    ApproxPoint0.orientation.z = AproxPoint1quat[2]
    ApproxPoint0.orientation.w = AproxPoint1quat[3]
    #print("ApproxPoint0 = ", ApproxPoint0)

    waypoints = []
    waypoints.append(copy.deepcopy(ApproxPoint0))
    cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
    tm12.execute_plan(cartesian_path1, ApproxPoint0)

    #TODO- UNDERSTAND HOW THIS TARGET POSITION HAS BEEN DEFINED
    #The base frame wrt the vision task base
    VisionTaskBase = [0.667, 1.138, -0.42777, 0, 0, math.radians(180)]
    #TargetPosition = [0.1525, 0.1075, 0.162, math.radians(180), 0, math.radians(180)] #relative
    TargetPositionquat = get_quaternion_from_euler( math.radians(180), 0, 0)

    TargetPoint = np.array([0.1525, 0.1075 , 0.162+0.05, 1]).T 
    d = np.array([VisionTaskBase[0], VisionTaskBase[1], VisionTaskBase[2]]).T
    theta = VisionTaskBase[3]
    phi = VisionTaskBase[4]
    psi = VisionTaskBase[5]
    T = get_homogen_transform(d, theta, phi, psi)

    TargetPointBF = T.dot(TargetPoint) #Target Point Base Frame
    TargetPointBF2 = [TargetPointBF[0]-tcp_offset[0], TargetPointBF[1]-tcp_offset[1], TargetPointBF[2]-tcp_offset[2]]
    #print("homogen T = ", T)
    #print("TargetPointBF  =", TargetPointBF)
    #print("TargetPointBF2 =", TargetPointBF2)

    TargetPosition = geometry_msgs.msg.Pose()
    TargetPosition.position.x = TargetPointBF2[0] 
    TargetPosition.position.y = TargetPointBF2[1] 
    TargetPosition.position.z = TargetPointBF2[2] + z_offset 
    TargetPosition.orientation.x = TargetPositionquat[0]
    TargetPosition.orientation.y = TargetPositionquat[1]
    TargetPosition.orientation.z = TargetPositionquat[2]
    TargetPosition.orientation.w = TargetPositionquat[3]

    waypoints = []
    waypoints.append(copy.deepcopy(TargetPosition))
    cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
    tm12.execute_plan(cartesian_path1, TargetPosition)

    #print("Target Position in the Base frame",TargetPosition)

    tm12.pose_state_move(TargetPosition)
    detach_srv.call(req)
    tm12.pose_state_move(DeppartPoint0)
    tm12.pose_state_move(DeppartPoint1)

    
  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()