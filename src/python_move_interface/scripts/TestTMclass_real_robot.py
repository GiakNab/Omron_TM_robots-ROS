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
from OmronTMRobot import TMRobotMotionFunctions


def all_close(goal, actual, tolerance=0.01):
  """
  This function is used to check the difference within two string, to check if the robot achieve the goal position.
  Is important for relative movements, because the planner must calculate relative path once the previous trajectory has finished.
  Convenience method for testing if a list of values are within a tolerance of their counterparts in another list
  @param: goal       A list of floats, a Pose or a PoseStamped
  @param: actual     A list of floats, a Pose or a PoseStamped
  @param: tolerance  A float
  @returns: bool
  """
  all_equal = True
  if type(goal) is list:
    for index in range(len(goal)):
      if abs(actual[index] - goal[index]) > tolerance:
        return False

  elif type(goal) is geometry_msgs.msg.PoseStamped:
    return all_close(goal.pose, actual.pose, tolerance)

  elif type(goal) is geometry_msgs.msg.Pose:
    return all_close(pose_to_list(goal), pose_to_list(actual), tolerance)

  return True

def main():
  try:   
    #Istantiate the object 'test' from class TMRobotMoveGroupPy, default planner ="SBL"
    tm5_700 = TMRobotMoveGroupPy("manipulator","RRT")
    tm5_700_srv = TMRobotMotionFunctions() 
    
    print("end-effector information", tm5_700.eef_link)

    joint_goal0 = [pi, 0, pi/2, 0, pi/2, 0]
    joint_goal1 = [pi, 0, pi/2, 0, pi/2, -pi/2]
    joint_goal2 = [2.2, 0, pi/2, 0, pi/2, 0]

    pose_goal0 = geometry_msgs.msg.Pose()
    pose_goal0.position.x = -0.35
    pose_goal0.position.y = 0.32
    pose_goal0.position.z = 0.38
    pose_goal0.orientation.x = -0.7070
    pose_goal0.orientation.y = 0.7070
    pose_goal0.orientation.z = 1.55e-5
    pose_goal0.orientation.w = 3.8e-5

#    i=0
#   while i<2:
    print ("============ Press `Enter` to move to a joint state goal ...")
    raw_input()
    i=0
    #while i<5:
    tm5_700.joint_state_move(joint_goal0)
    tm5_700_srv.assign_QueueTag(1)
    
      #tm5_700.joint_state_move(joint_goal1)
    tm5_700.joint_state_move(joint_goal2)
    
      #tm5_700.pose_state_move(pose_goal0)
    tm5_700_srv.assign_QueueTag(2)

      #plan a cartesian path
    wait=True

    while(wait):
        #if all_close(pose_goal0, tm5_700.move_group.get_current_pose().pose):
       if all_close(joint_goal2, tm5_700.move_group.get_current_joint_values()):
        pose_goal1 =  tm5_700.move_group.get_current_pose().pose
        pose_goal1.position.z += 0.1 #movement of 0.1 m along z axes of end-effector
        cartesian_path, fract, waypoints = tm5_700.plan_cartesian_path(pose_goal1)
        #movement along x and y to append to the previous one
        pose_goal1.position.x -= 0.1 
        pose_goal1.position.y += 0.1 
        cartesian_path, fract, waypoints = tm5_700.plan_cartesian_path(pose_goal1,waypoints)
        wait=False
       else:
        wait=True

      #display and execute in Rviz the movement
    tm5_700.display_trajectory(cartesian_path)
    tm5_700.execute_plan(cartesian_path)
    tm5_700_srv.assign_QueueTag(3)

    #i=i+1


  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()