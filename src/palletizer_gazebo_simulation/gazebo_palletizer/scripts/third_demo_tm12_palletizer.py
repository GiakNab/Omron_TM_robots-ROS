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

    r = rospy.Rate(5)

    # define the cube to spawn
    name = ["Part0", "Part1", "Part2", "Part3","Part4", "Part5","Part6", "Part7", "Part8", "Part9"]
    num_parts = len(name)

    #offset here
    z_offset = 0.785 
    tcp_offset = [0.05, -0.05, -0.13]

    #go to Idle Position
    IdlePosition = [math.radians(14.42), math.radians(-43.8), math.radians(108.61), math.radians(24.74), math.radians(88.85)
                , math.radians(15.18)]

    tm12.joint_state_move(IdlePosition)

    #Define boxes ApproxPointPB1 
    bAproxPointPB1 = [0.622 - tcp_offset[0], -0.067 - tcp_offset[1] , 0.488 + (- tcp_offset[2]) + z_offset, math.radians(180), 0, 0] #absolute
    bAproxPointPB1quat = get_quaternion_from_euler(bAproxPointPB1[3], bAproxPointPB1[4], bAproxPointPB1[5])

    bApproxPointPB1 = geometry_msgs.msg.Pose()
    bApproxPointPB1.position.x = bAproxPointPB1[0]
    bApproxPointPB1.position.y = bAproxPointPB1[1]
    bApproxPointPB1.position.z = bAproxPointPB1[2]
    bApproxPointPB1.orientation.x = bAproxPointPB1quat[0]
    bApproxPointPB1.orientation.y = bAproxPointPB1quat[1]
    bApproxPointPB1.orientation.z = bAproxPointPB1quat[2]
    bApproxPointPB1.orientation.w = bAproxPointPB1quat[3]

    # define Boxes pick position
    PickBoxes = [1.066 - tcp_offset[0], 0.386 - tcp_offset[1], 0.1532 - tcp_offset[2] + z_offset,  math.radians(180), 0, 0] #PickBoxes (PB)
    PickBoxesquat = get_quaternion_from_euler(PickBoxes[3], PickBoxes[4],PickBoxes[5])

    PickB = geometry_msgs.msg.Pose()
    PickB.position.x = PickBoxes[0]
    PickB.position.y = PickBoxes[1]
    PickB.position.z = PickBoxes[2]
    PickB.orientation.x = PickBoxesquat[0]
    PickB.orientation.y = PickBoxesquat[1]
    PickB.orientation.z = PickBoxesquat[2]
    PickB.orientation.w = PickBoxesquat[3]

    #ApproxPointPB0 = DeppartPointPB0 relative to PickB 
    bDeppartPointPB0 = geometry_msgs.msg.Pose()
    bDepartPointPB0 = [0, 0, 0.150, 0, 0, 0] #relative to Pickboxes
    bDeppartPointPB0.position.x = PickBoxes[0] + bDepartPointPB0[0] 
    bDeppartPointPB0.position.y = PickBoxes[1] + bDepartPointPB0[1] 
    bDeppartPointPB0.position.z = PickBoxes[2] + bDepartPointPB0[2] 
    bDeppartPointPB0.orientation.x = PickBoxesquat[0]
    bDeppartPointPB0.orientation.y = PickBoxesquat[1]
    bDeppartPointPB0.orientation.z = PickBoxesquat[2]
    bDeppartPointPB0.orientation.w = PickBoxesquat[3]

    bApproxPointPB0 = bDeppartPointPB0
    
    # DeppartPointPB1 absolute point
    bDepartPointPB1 = [0.75 - tcp_offset[0], 0.265 - tcp_offset[1], 0.508 + (- tcp_offset[2]) + z_offset, math.radians(180), 0, 0] #absolute
    bDepartPointPB1quat = get_quaternion_from_euler(bDepartPointPB1[3], bDepartPointPB1[4], bDepartPointPB1[5])

    bDeppartPointPB1 = geometry_msgs.msg.Pose()
    bDeppartPointPB1.position.x = bDepartPointPB1[0]
    bDeppartPointPB1.position.y = bDepartPointPB1[1]
    bDeppartPointPB1.position.z = bDepartPointPB1[2]
    bDeppartPointPB1.orientation.x = bDepartPointPB1quat[0]
    bDeppartPointPB1.orientation.y = bDepartPointPB1quat[1]
    bDeppartPointPB1.orientation.z = bDepartPointPB1quat[2]
    bDeppartPointPB1.orientation.w = bDepartPointPB1quat[3]

    #Define Slipsheet ApproxPointPB1 
    sAproxPointPB1 = [0.625 - tcp_offset[0], -0.019 - tcp_offset[1] , 0.509 + (- tcp_offset[2]) + z_offset, math.radians(180), 0, math.radians(90)] #absolute
    sAproxPointPB1quat = get_quaternion_from_euler(sAproxPointPB1[3], sAproxPointPB1[4], sAproxPointPB1[5])

    sApproxPointPB1 = geometry_msgs.msg.Pose()
    sApproxPointPB1.position.x = sAproxPointPB1[0]
    sApproxPointPB1.position.y = sAproxPointPB1[1]
    sApproxPointPB1.position.z = sAproxPointPB1[2]
    sApproxPointPB1.orientation.x = sAproxPointPB1quat[0]
    sApproxPointPB1.orientation.y = sAproxPointPB1quat[1]
    sApproxPointPB1.orientation.z = sAproxPointPB1quat[2]
    sApproxPointPB1.orientation.w = sAproxPointPB1quat[3]

    # define Slipsheet pick position
    PickSlipsheet = [0.626 - tcp_offset[0], -0.018 - tcp_offset[1], -0.085 + (- tcp_offset[2]) + z_offset,  math.radians(180), 0, math.radians(90)] #PickSlip (PS)
    PickSlipquat = get_quaternion_from_euler(PickSlipsheet[3], PickSlipsheet[4],PickSlipsheet[5])

    PickS = geometry_msgs.msg.Pose()
    PickS.position.x = PickSlipsheet[0]
    PickS.position.y = PickSlipsheet[1]
    PickS.position.z = PickSlipsheet[2]
    PickS.orientation.x = PickSlipquat[0]
    PickS.orientation.y = PickSlipquat[1]
    PickS.orientation.z = PickSlipquat[2]
    PickS.orientation.w = PickSlipquat[3]

    #sApproxPointPB0 and sDeppartPointPB0 relative to PickS 
    sDepartPointPB0 = [0, 0, 0.350, 0, 0, 0] #relative to boxes
    sDeppartPointPB0 = geometry_msgs.msg.Pose()
    sDeppartPointPB0.position.x = PickSlipsheet[0] 
    sDeppartPointPB0.position.y = PickSlipsheet[1] 
    sDeppartPointPB0.position.z = PickSlipsheet[2] + sDepartPointPB0[2] 
    sDeppartPointPB0.orientation.x = PickSlipquat[0]
    sDeppartPointPB0.orientation.y = PickSlipquat[1]
    sDeppartPointPB0.orientation.z = PickSlipquat[2]
    sDeppartPointPB0.orientation.w = PickSlipquat[3]

    sApproxPointPB0 = sDeppartPointPB0

    # sDeppartPointPB1 absolute point
    sDepartPointPB1 = [0.75 - tcp_offset[0], 0.265 - tcp_offset[1], 0.508 + (- tcp_offset[2]) + z_offset, math.radians(180), 0, 0] #absolute
    sDepartPointPB1quat = get_quaternion_from_euler(sDepartPointPB1[3], sDepartPointPB1[4], sDepartPointPB1[5])

    sDeppartPointPB1 = geometry_msgs.msg.Pose()
    sDeppartPointPB1.position.x = sDepartPointPB1[0]
    sDeppartPointPB1.position.y = sDepartPointPB1[1]
    sDeppartPointPB1.position.z = sDepartPointPB1[2]
    sDeppartPointPB1.orientation.x = sDepartPointPB1quat[0]
    sDeppartPointPB1.orientation.y = sDepartPointPB1quat[1]
    sDeppartPointPB1.orientation.z = sDepartPointPB1quat[2]
    sDeppartPointPB1.orientation.w = sDepartPointPB1quat[3]

    i=0

    while i<num_parts:

      if i == 4 or i == 9:
        ss = SlipsheetSpawner(name[i])
        succeded2 = ss.spawnModel()
        print(succeded2)

        waypoints = []
        waypoints.append(copy.deepcopy(sApproxPointPB1))
        cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
        tm12.execute_plan(cartesian_path1, sApproxPointPB1)
        #tm12.pose_state_move(sApproxPointPB1) 
        tm12.pose_state_move(sApproxPointPB0)
        tm12.pose_state_move(PickS)

        #grab the Part[i] with the vaccum gripper
        req = AttachRequest()
        req.model_name_1 = name[i]
        req.link_name_1 = "base_link"
        req.model_name_2 = "robot"
        req.link_name_2 = "wrist_3_link"
        attach_srv.call(req)
        rospy.sleep(0.2)

        tm12.pose_state_move(sDeppartPointPB0)
        tm12.pose_state_move(sDeppartPointPB1)

      else:
        cs = CubeSpawner(name[i])
        succeded = cs.spawnModel()
        print(succeded)

        waypoints = []
        waypoints.append(copy.deepcopy(bApproxPointPB1))
        cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
        tm12.execute_plan(cartesian_path1, bApproxPointPB1)

        #tm12.pose_state_move(bApproxPointPB1) 
        tm12.pose_state_move(bApproxPointPB0)
        tm12.pose_state_move(PickB)

        #grab the Part[i] with the vaccum gripper
        req = AttachRequest()
        req.model_name_1 = name[i]
        req.link_name_1 = "base_link"
        req.model_name_2 = "robot"
        req.link_name_2 = "wrist_3_link"
        attach_srv.call(req)
        rospy.sleep(0.2)

        tm12.pose_state_move(bDeppartPointPB0)
        tm12.pose_state_move(bDeppartPointPB1)

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

      #move to AproxPoint1 to place the boxes and slipsheet
      tm12.pose_state_move(ApproxPoint1) #ok

      #The base frame wrt the vision task base
      VisionTaskBase = np.array([0.667, 1.138, -0.42777, 0, 0, math.radians(180)])

      TargPositions =  ['152.5', '107.5', '162', '180', '0', '180',
       '152.5', '322.5', '162', '180', '0', '180',
       '457.5', '107.5', '162', '180', '0', '180',
       '457.5', '322.5', '162', '180', '0', '180',
       '337.5', '251.5', '171', '180', '0', '180',
       '152.5', '107.5', '333', '180', '0', '180',
       '152.5', '322.5', '333', '180', '0', '180',
       '457.5', '107.5', '333', '180', '0', '180', 
       '457.5', '322.5', '333', '180', '0', '180', 
       '337.5', '251.5', '342', '180', '0', '180']

      TargetPosition = TargetPosition = [float(TargPositions[0 + i*6])*1e-3, float(TargPositions[1 + i*6])*1e-3, float(TargPositions[2 + i*6])*1e-3, 
       math.radians(int(TargPositions[3 + i*6])), math.radians(int(TargPositions[4 + i*6])), math.radians(int(TargPositions[5 + i*6]))] #relative

      TargetPositionquat = get_quaternion_from_euler(TargetPosition[3], TargetPosition[4], TargetPosition[5] - VisionTaskBase[5])

      print( "Target Position of current Part = ",TargetPosition)
      print( "Target Position of current orinet = ",TargetPositionquat)
      #raw_input("I'm waiting, press enter to continue")

      TargetPoint = np.array([TargetPosition[0], TargetPosition[1], TargetPosition[2] + 0.03, 1]).T 
      d = np.array([VisionTaskBase[0], VisionTaskBase[1], VisionTaskBase[2]]).T
      theta = VisionTaskBase[3]
      phi = VisionTaskBase[4]
      psi = VisionTaskBase[5]
      T = get_homogen_transform(d, theta, phi, psi)
      print ("T = ", T)

      TargetPointBF = T.dot(TargetPoint) #Target Point Base Frame
      TargetPointBF2 = [TargetPointBF[0]-tcp_offset[0], TargetPointBF[1]-tcp_offset[1], TargetPointBF[2]-tcp_offset[2]]
      print("PointBF2 = ", TargetPointBF2)

      TargetPose = geometry_msgs.msg.Pose()
      TargetPose.position.x = TargetPointBF2[0] 
      TargetPose.position.y = TargetPointBF2[1] 
      TargetPose.position.z = TargetPointBF2[2] + z_offset 
      TargetPose.orientation.x = TargetPositionquat[0]
      TargetPose.orientation.y = TargetPositionquat[1]
      TargetPose.orientation.z = TargetPositionquat[2]
      TargetPose.orientation.w = TargetPositionquat[3]
      
      #move to AproxPoint1 to place the boxes and slipsheet using line movement
      AproxPoint0 = [0.050, 0.050, 0.200, 0, 0, 0] #relative

      ApproxPoint0 = geometry_msgs.msg.Pose()
      ApproxPoint0.position.x = TargetPointBF2[0] - AproxPoint0[0]
      ApproxPoint0.position.y = TargetPointBF2[1] - AproxPoint0[1]
      ApproxPoint0.position.z = TargetPointBF2[2] + z_offset  + AproxPoint0[2]
      ApproxPoint0.orientation.x = TargetPositionquat[0]
      ApproxPoint0.orientation.y = TargetPositionquat[1]
      ApproxPoint0.orientation.z = TargetPositionquat[2]
      ApproxPoint0.orientation.w = TargetPositionquat[3]

      waypoints = []
      waypoints.append(copy.deepcopy(ApproxPoint0))
      cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
      tm12.execute_plan(cartesian_path1, ApproxPoint0)

      waypoints = []
      waypoints.append(copy.deepcopy(TargetPose))
      cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
      tm12.execute_plan(cartesian_path1, TargetPose)
      print("TargetPose = ", TargetPose)

      detach_srv.call(req)
      #rospy.sleep(0.2)

      #raw_input("read joint state")
      # DeppartPoint0 relative to TargetPose
      DepartPoint0 = [0, 0, 0.300, 0, 0, 0] #relative

      DeppartPoint0 = geometry_msgs.msg.Pose()
      DeppartPoint0.position.x = TargetPointBF2[0] + DepartPoint0[0]
      DeppartPoint0.position.y = TargetPointBF2[1] + DepartPoint0[1]
      DeppartPoint0.position.z = TargetPointBF2[2] + z_offset + DepartPoint0[2]
      DeppartPoint0.orientation.x = TargetPositionquat[0]
      DeppartPoint0.orientation.y = TargetPositionquat[1]
      DeppartPoint0.orientation.z = TargetPositionquat[2]
      DeppartPoint0.orientation.w = TargetPositionquat[3]

      # DeppartPoint0 absolute and equal to AproxPoint1
      DeppartPoint1 = ApproxPoint1
      
      tm12.pose_state_move(DeppartPoint0)
      tm12.pose_state_move(DeppartPoint1)

      #raw_input("wait?")
      i +=1

      if i == num_parts:
        tm12.joint_state_move(IdlePosition)
      

      

  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()