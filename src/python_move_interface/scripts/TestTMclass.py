#!/usr/bin/env python

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
from OmronTMRobot import TMRobotMoveGroupPy

def main():
  try:   
    #Istantiate the object 'test' from class TMRobotMoveGroupPy, default planner ="SBL"
    tm5_700 = TMRobotMoveGroupPy("tm5_700_arm","SBL")
    
    print("end-effector information", tm5_700.eef_link)


    joint_goal0 = [pi, 0, pi/2, 0, pi/2, 0]
    joint_goal1 = [pi, 0, pi/2, 0, pi/2, -pi/2]
    joint_goal2 = [pi, 0, pi/2, 0, pi/2, pi/2]

    pose_goal0 = geometry_msgs.msg.Pose()
    pose_goal0.position.x = -0.40
    pose_goal0.position.y = 0.20
    pose_goal0.position.z = 0.38
    pose_goal0.orientation.x = -0.7070
    pose_goal0.orientation.y = 0.7070
    pose_goal0.orientation.z = 1.55e-5
    pose_goal0.orientation.w = 3.8e-5

#    i=0
#   while i<2:

    #tm5_700.joint_state_move(joint_goal0)
    #tm5_700.joint_state_move(joint_goal1)
    #tm5_700.joint_state_move(joint_goal2)
    tm5_700.pose_state_move(pose_goal0)
#     i+=1

    #plan a cartesian path
    pose_goal1 =  tm5_700.move_group.get_current_pose().pose
    pose_goal1.position.z += 0.1 #movement of 0.1 m along z axes of end-effector
    cartesian_path, fract, waypoints = tm5_700.plan_cartesian_path(pose_goal1)
    
    #movement along x and y to append to the previous one
    pose_goal1.position.x -= 0.1 
    pose_goal1.position.y += 0.1 
    cartesian_path, fract, waypoints = tm5_700.plan_cartesian_path(pose_goal1,waypoints)

    #display and execute in Rviz the movement
    tm5_700.display_trajectory(cartesian_path)
    tm5_700.execute_plan(cartesian_path)



  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()