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
    tm5_700.move_group.allow_replanning(True)
    tm5_700.move_group.set_planning_time(5) #seconds
    
    print("end-effector information", tm5_700.eef_link)

    joint_goal0 = [4.3542683822795546e-05, 1.2441950638137277e-05, 1.5707714262387042, -7.757019085584033e-05, 1.5708350757887573, -3.8785095427920166e-05]
    joint_goal1 = [0.7930810502471907, 0.5522671055217566, 1.9243468073114014, -0.905845216334571, 1.5707091082691964, 0.7931648732425008]
    joint_goal2 = [0.3103209178588754, -0.010762287534633356, 1.9920371716862724, -0.43494573817703264, 1.5562615925135712, 0.4141860312952151]
    joint_goal3 = [-0.30892122696895696, 0.41599664794133273, 2.013169887568269, -0.8867726552928323, 1.5730942353414714, -0.20490165018939266]

    pose_goal2 = geometry_msgs.msg.Pose()
    pose_goal2.position.x = -0.28
    pose_goal2.position.y = 0.43
    pose_goal2.position.z = 0.08
    pose_goal2.orientation.x = 0
    pose_goal2.orientation.y = 1
    pose_goal2.orientation.z = 0
    pose_goal2.orientation.w = 0

    i = 0

    while i <= 5:
  
      tm5_700.joint_state_move(joint_goal0)
      tm5_700_srv.assign_QueueTag(1)

      wait = True   
      while wait:
       if all_close(joint_goal0, tm5_700.move_group.get_current_joint_values()):
        tm5_700.joint_state_move(joint_goal1)
        tm5_700_srv.assign_QueueTag(2)
        wait=False
    
      wait = True
      while wait:
        if all_close(joint_goal1, tm5_700.move_group.get_current_joint_values()):
          tm5_700.joint_state_move(joint_goal2)
          tm5_700_srv.assign_QueueTag(3)
          wait=False
   
      wait = True
      while wait:
       if all_close(joint_goal2, tm5_700.move_group.get_current_joint_values()):   
        tm5_700.joint_state_move(joint_goal3)
        tm5_700_srv.assign_QueueTag(4)
        wait = False
      
      i +=1
    

  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()