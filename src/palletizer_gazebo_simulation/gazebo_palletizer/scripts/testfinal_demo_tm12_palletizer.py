#!/usr/bin/env python

import sys
import copy
import rospy, tf, rospkg
import math
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import numpy as np
import XMLparams
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
    #Istantiate the object 'test' from class TMRobotMoveGroupPy, default planner ="RRTConnect" /EST/RRTStar(slow)
    tm12 = TMRobotMoveGroupPy("tm12_arm", "RRTConnect")
    grasping_group="tm12_arm"

    tm12.move_group.allow_replanning(True)
    tm12.move_group.set_planning_time(5) #seconds

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

    r = rospy.Rate(10)

    # define the Parts to spawn
    name = XMLparams.PartName
    LocationID = XMLparams.LocationID
    num_parts = len(name)

    #offset here
    z_offset = XMLparams.z_offset
    tcp_offset = XMLparams.tcp_offset

    #The vision task base defined through the landmark
    VisionTaskBase = np.array([0.667, 1.138, -0.42777, 0, 0, math.radians(180)])

    #go to Idle Position
    IdlePosition = XMLparams.IdlePosition

    #Define boxes ApproxPointPB1 

    AproxPointPB1 = XMLparams.AproxPointPB1 #AproxPointPickBoxes1
    AproxPointPB1quat = get_quaternion_from_euler(AproxPointPB1[3], AproxPointPB1[4], AproxPointPB1[5])

    ApproxPointPB1 = geometry_msgs.msg.Pose()
    ApproxPointPB1.position.x = AproxPointPB1[0] - tcp_offset[0]
    ApproxPointPB1.position.y = AproxPointPB1[1] - tcp_offset[1]
    ApproxPointPB1.position.z = AproxPointPB1[2] - tcp_offset[2] + z_offset
    ApproxPointPB1.orientation.x = AproxPointPB1quat[0]
    ApproxPointPB1.orientation.y = AproxPointPB1quat[1]
    ApproxPointPB1.orientation.z = AproxPointPB1quat[2]
    ApproxPointPB1.orientation.w = AproxPointPB1quat[3]

    #PickBoxes (PB) define Boxes pick position 
    PickBoxes = XMLparams.PickBoxes
    PickBoxesquat = get_quaternion_from_euler(PickBoxes[3], PickBoxes[4], PickBoxes[5])

    PickB = geometry_msgs.msg.Pose()
    PickB.position.x = PickBoxes[0] - tcp_offset[0]
    PickB.position.y = PickBoxes[1] - tcp_offset[1]
    PickB.position.z = PickBoxes[2] - tcp_offset[2] + z_offset
    PickB.orientation.x = PickBoxesquat[0]
    PickB.orientation.y = PickBoxesquat[1]
    PickB.orientation.z = PickBoxesquat[2]
    PickB.orientation.w = PickBoxesquat[3]

    #Define ApproxPointPB0 = DeppartPointPB0 relative to PickB 
    AproxPointPB0 = XMLparams.AproxPointPB0

    ApproxPointPB0 = geometry_msgs.msg.Pose()
    ApproxPointPB0.position.x = PickBoxes[0] + AproxPointPB0[0] - tcp_offset[0]
    ApproxPointPB0.position.y = PickBoxes[1] + AproxPointPB0[1] - tcp_offset[1]
    ApproxPointPB0.position.z = PickBoxes[2] + AproxPointPB0[2] - tcp_offset[2] + z_offset
    ApproxPointPB0.orientation.x = PickBoxesquat[0]
    ApproxPointPB0.orientation.y = PickBoxesquat[1]
    ApproxPointPB0.orientation.z = PickBoxesquat[2]
    ApproxPointPB0.orientation.w = PickBoxesquat[3]

    DeppartPointPB0 = ApproxPointPB0
    
    # DeppartPointPB1 absolute point
   
    DepartPointPB1 = XMLparams.DepartPointPB1
    DepartPointPB1quat = get_quaternion_from_euler(DepartPointPB1[3], DepartPointPB1[4], DepartPointPB1[5])

    DeppartPointPB1 = geometry_msgs.msg.Pose()
    DeppartPointPB1.position.x = DepartPointPB1[0] - tcp_offset[0]
    DeppartPointPB1.position.y = DepartPointPB1[1] - tcp_offset[1]
    DeppartPointPB1.position.z = DepartPointPB1[2] - tcp_offset[2] + z_offset
    DeppartPointPB1.orientation.x = DepartPointPB1quat[0]
    DeppartPointPB1.orientation.y = DepartPointPB1quat[1]
    DeppartPointPB1.orientation.z = DepartPointPB1quat[2]
    DeppartPointPB1.orientation.w = DepartPointPB1quat[3]

    #Define Slipsheet ApproxPointPB1
    AproxPointPS1 = XMLparams.AproxPointPS1
    AproxPointPS1quat = get_quaternion_from_euler(AproxPointPS1[3], AproxPointPS1[4], AproxPointPS1[5])

    ApproxPointPS1 = geometry_msgs.msg.Pose()
    ApproxPointPS1.position.x = AproxPointPS1[0] - tcp_offset[0]
    ApproxPointPS1.position.y = AproxPointPS1[1] - tcp_offset[1]
    ApproxPointPS1.position.z = AproxPointPS1[2] - tcp_offset[2] + z_offset
    ApproxPointPS1.orientation.x = AproxPointPS1quat[0]
    ApproxPointPS1.orientation.y = AproxPointPS1quat[1]
    ApproxPointPS1.orientation.z = AproxPointPS1quat[2]
    ApproxPointPS1.orientation.w = AproxPointPS1quat[3]

    # PS = PickSlisheet define Slipsheet pick position
    PickSlipsheet = XMLparams.PickSlipsheet
    PickSlipquat = get_quaternion_from_euler(PickSlipsheet[3], PickSlipsheet[4],PickSlipsheet[5])

    PickS = geometry_msgs.msg.Pose()
    PickS.position.x = PickSlipsheet[0] - tcp_offset[0]
    PickS.position.y = PickSlipsheet[1] - tcp_offset[1]
    PickS.position.z = PickSlipsheet[2] - tcp_offset[2] + z_offset
    PickS.orientation.x = PickSlipquat[0]
    PickS.orientation.y = PickSlipquat[1]
    PickS.orientation.z = PickSlipquat[2]
    PickS.orientation.w = PickSlipquat[3]

    #ApproxPointPS0 and DeppartPointPS0 relative to PickS 
    AproxPointPS0 = XMLparams.AproxPointPS0 #relative 

    ApproxPointPS0 = geometry_msgs.msg.Pose()
    ApproxPointPS0.position.x = PickSlipsheet[0] -tcp_offset[0]
    ApproxPointPS0.position.y = PickSlipsheet[1] -tcp_offset[1]
    ApproxPointPS0.position.z = PickSlipsheet[2] -tcp_offset[2] + z_offset + AproxPointPS0[2]
    ApproxPointPS0.orientation.x = PickSlipquat[0]
    ApproxPointPS0.orientation.y = PickSlipquat[1]
    ApproxPointPS0.orientation.z = PickSlipquat[2]
    ApproxPointPS0.orientation.w = PickSlipquat[3]

    DeppartPointPS0 = ApproxPointPS0

    # DepartPointPS1 absolute point
    DepartPointPS1 = XMLparams.DepartPointPS1
    DepartPointPS1quat = get_quaternion_from_euler(DepartPointPS1[3], DepartPointPS1[4], DepartPointPS1[5])

    DeppartPointPS1 = geometry_msgs.msg.Pose()
    DeppartPointPS1.position.x = DepartPointPS1[0] - tcp_offset[0]
    DeppartPointPS1.position.y = DepartPointPS1[1] - tcp_offset[1]
    DeppartPointPS1.position.z = DepartPointPS1[2] - tcp_offset[2] + z_offset
    DeppartPointPS1.orientation.x = DepartPointPS1quat[0]
    DeppartPointPS1.orientation.y = DepartPointPS1quat[1]
    DeppartPointPS1.orientation.z = DepartPointPS1quat[2]
    DeppartPointPS1.orientation.w = DepartPointPS1quat[3]

    # START MOVIMENTATION
    #first go to IdlePose
    tm12.joint_state_move(IdlePosition)   
    #then go to different picking position (PB or PS) reading the LocationID flag
    i=0
    while i<num_parts:

      if LocationID[i] == '1':
        ss = SlipsheetSpawner(name[i])
        succeded = ss.spawnModel()
        
        # move to ApproxPointPS1 with LINE movement, then to ApproxPointPS0 and PS with PTP
        waypoints = []
        waypoints.append(copy.deepcopy(ApproxPointPS1))
        cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)

        tm12.execute_plan(cartesian_path1, ApproxPointPS1)
        #tm12.pose_state_move(ApproxPointPS1)
        tm12.pose_state_move(ApproxPointPS0)
        tm12.pose_state_move(PickS)

        #grab the Part[i] with the vaccum gripper
        req = AttachRequest()
        req.model_name_1 = name[i]
        req.link_name_1 = "base_link"
        req.model_name_2 = "robot"
        req.link_name_2 = "wrist_3_link"
        attach_srv.call(req)

        # move to DeppartPointPS0 then to DeppartPointPS1 with PTP
        tm12.pose_state_move(DeppartPointPS0)
        tm12.pose_state_move(DeppartPointPS1)

      elif LocationID[i] == '0' :
        cs = CubeSpawner(name[i])
        succeded = cs.spawnModel()

        # move to ApproxPointPB1 with LINE movement, then to ApproxPointPB0 and PS with PTP
        waypoints = []
        waypoints.append(copy.deepcopy(ApproxPointPB1))
        cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)

        tm12.execute_plan(cartesian_path1, ApproxPointPB1)
        tm12.pose_state_move(ApproxPointPB0)
        tm12.pose_state_move(PickB)

        #grab the Part[i] with the vaccum gripper
        req = AttachRequest()
        req.model_name_1 = name[i]
        req.link_name_1 = "base_link"
        req.model_name_2 = "robot"
        req.link_name_2 = "wrist_3_link"
        attach_srv.call(req)
        rospy.sleep(0.2)

        # move to DeppartPointPB0 then to DeppartPointPS1 with PTP
        tm12.pose_state_move(DeppartPointPB0)
        tm12.pose_state_move(DeppartPointPB1)

      else :
        print("Error on the LocationID param of the XML file")
        break

      # Define From XML file (Aprox0/1 & Depart0/1 Points absolute and relative)
      AproxPoint1 =XMLparams.AproxPoint1
      AproxPoint1quat = get_quaternion_from_euler(AproxPoint1[3], AproxPoint1[4],AproxPoint1[5])

      ApproxPoint1 = geometry_msgs.msg.Pose()
      ApproxPoint1.position.x = AproxPoint1[0] - tcp_offset[0]
      ApproxPoint1.position.y = AproxPoint1[1] - tcp_offset[1]
      ApproxPoint1.position.z = AproxPoint1[2] - tcp_offset[2] + z_offset
      ApproxPoint1.orientation.x = AproxPoint1quat[0]
      ApproxPoint1.orientation.y = AproxPoint1quat[1]
      ApproxPoint1.orientation.z = AproxPoint1quat[2]
      ApproxPoint1.orientation.w = AproxPoint1quat[3]

      #move to AproxPoint1 to place the boxes or slipsheet
      waypoints = []
      waypoints.append(copy.deepcopy(ApproxPoint1))
      cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)

      tm12.execute_plan(cartesian_path1, ApproxPoint1)

      #Calculate target points in the base frame because are defined wrt the vision task base
      TargPositions =  XMLparams.TargPositons
      #Transform data of XML to float and with right unit measurement
      TargetPosition = [TargPositions[0 + i*6]*1e-3, TargPositions[1 + i*6]*1e-3, TargPositions[2 + i*6]*1e-3, 
       math.radians(TargPositions[3 + i*6]), math.radians(TargPositions[4 + i*6]), math.radians(TargPositions[5 + i*6])] #relative
      TargetPositionquat = get_quaternion_from_euler(TargetPosition[3], TargetPosition[4], TargetPosition[5] - VisionTaskBase[5])

      #Get the transformation matrix T between Robot and Vision task bases
      TargetPoint = np.array([TargetPosition[0], TargetPosition[1], TargetPosition[2] + 0.02, 1]).T 
      d = np.array([VisionTaskBase[0], VisionTaskBase[1], VisionTaskBase[2]]).T
      theta = VisionTaskBase[3]
      phi = VisionTaskBase[4]
      psi = VisionTaskBase[5]
      T = get_homogen_transform(d, theta, phi, psi)
      print ("T = ", T)
      TargetPointBF = T.dot(TargetPoint) #Target Point in the Base Frame

      TargetPose = geometry_msgs.msg.Pose()
      TargetPose.position.x = TargetPointBF[0] -tcp_offset[0]
      TargetPose.position.y = TargetPointBF[1] -tcp_offset[1]
      TargetPose.position.z = TargetPointBF[2] -tcp_offset[2] + z_offset 
      TargetPose.orientation.x = TargetPositionquat[0]
      TargetPose.orientation.y = TargetPositionquat[1]
      TargetPose.orientation.z = TargetPositionquat[2]
      TargetPose.orientation.w = TargetPositionquat[3]
      
      #AproxPoint0 is relative to the Target and use a LINE movement
      AproxPoint0 = XMLparams.AproxPoint0

      ApproxPoint0 = geometry_msgs.msg.Pose()
      ApproxPoint0.position.x = TargetPointBF[0] -tcp_offset[0] - AproxPoint0[0]
      ApproxPoint0.position.y = TargetPointBF[1] -tcp_offset[1] - AproxPoint0[1]
      ApproxPoint0.position.z = TargetPointBF[2] -tcp_offset[2] + z_offset  + AproxPoint0[2]
      ApproxPoint0.orientation.x = TargetPositionquat[0]
      ApproxPoint0.orientation.y = TargetPositionquat[1]
      ApproxPoint0.orientation.z = TargetPositionquat[2]
      ApproxPoint0.orientation.w = TargetPositionquat[3]

      # go to AproxPoint0
      waypoints = []
      waypoints.append(copy.deepcopy(ApproxPoint0))
      cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
      tm12.execute_plan(cartesian_path1, ApproxPoint0)
      
      # go to TargetPosition
      waypoints = []
      waypoints.append(copy.deepcopy(TargetPose))
      cartesian_path1, fract1, waypoints1 = tm12.plan_cartesian_path(waypoints)
      tm12.execute_plan(cartesian_path1, TargetPose)

      # detach the object from the gripper 
      detach_srv.call(req)

      # DepartPoint0 relative to TargetPose
      DepartPoint0 = XMLparams.DepartPoint0

      DeppartPoint0 = geometry_msgs.msg.Pose()
      DeppartPoint0.position.x = TargetPointBF[0] - tcp_offset[0] + DepartPoint0[0]
      DeppartPoint0.position.y = TargetPointBF[1] - tcp_offset[1] + DepartPoint0[1]
      DeppartPoint0.position.z = TargetPointBF[2] - tcp_offset[2] + z_offset + DepartPoint0[2]
      DeppartPoint0.orientation.x = TargetPositionquat[0]
      DeppartPoint0.orientation.y = TargetPositionquat[1]
      DeppartPoint0.orientation.z = TargetPositionquat[2]
      DeppartPoint0.orientation.w = TargetPositionquat[3]

      # DeppartPoint0 absolute and equal to AproxPoint1
      DeppartPoint1 = ApproxPoint1
      
      tm12.pose_state_move(DeppartPoint0)
      tm12.pose_state_move(DeppartPoint1)
      
      i +=1

      if i == num_parts:
        tm12.joint_state_move(IdlePosition)
      

      

  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()