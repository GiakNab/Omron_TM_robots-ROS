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

    joint_goal_start = [3.3194939449359584, 0.16316996584212143, 0.4780757318994068, 1.0103808138648518, 1.537014527841405, 0.13796828103199826]
    joint_goal_a = [3.60335069814758, -0.19406333356682673, 1.3558989342175687, 0.4909611039386189, 1.5716204419942217, 0.4209928047253486]
    joint_goal_b = [2.9391061243244527, -0.08240303942890581, 1.9863947322847215, -0.2708751078990032, 1.5094287063220373, -0.24198020954580698]
    joint_goal_c = [3.97450027925371, -0.07385542417321474, 1.2835738705976327, 0.44551469270009386, 1.5930880503832958, 0.7905081037390378]
    joint_goal_d = [3.9903263803476148, -0.10617961680545715, 2.13813672434942, -0.37702990737205216, 1.5945328152746638, 0.8064681618357737]


    pose_goal2 = geometry_msgs.msg.Pose()
    pose_goal2.position.x = -0.28
    pose_goal2.position.y = 0.43
    pose_goal2.position.z = 0.08
    pose_goal2.orientation.x = 0
    pose_goal2.orientation.y = 1
    pose_goal2.orientation.z = 0
    pose_goal2.orientation.w = 0

    i = 0

    tm5_700.joint_state_move(joint_goal_start)
    tm5_700_srv.assign_QueueTag(1)
    rospy.sleep(0.5)

    while i <= 5: 

        tm5_700.joint_state_move(joint_goal_a)
        tm5_700_srv.assign_QueueTag(2)
    
        wait = True
        while wait:
          if all_close(joint_goal_a, tm5_700.move_group.get_current_joint_values()):
            tm5_700.joint_state_move(joint_goal_b)
            tm5_700_srv.assign_QueueTag(3)
            wait=False
   
        wait = True
        while wait:
         if all_close(joint_goal_b, tm5_700.move_group.get_current_joint_values()):   
          tm5_700.joint_state_move(joint_goal_a)
          tm5_700_srv.assign_QueueTag(4)
          wait = False

        wait = True
        while wait:
         if all_close(joint_goal_a, tm5_700.move_group.get_current_joint_values()):   
          tm5_700.joint_state_move(joint_goal_c)
          tm5_700_srv.assign_QueueTag(5)
          wait = False

        wait = True
        while wait:
         if all_close(joint_goal_c, tm5_700.move_group.get_current_joint_values()):   
          tm5_700.joint_state_move(joint_goal_d)
          tm5_700_srv.assign_QueueTag(6)
          wait = False

        wait = True
        while wait:
         if all_close(joint_goal_d, tm5_700.move_group.get_current_joint_values()):   
          tm5_700.joint_state_move(joint_goal_c)
          tm5_700_srv.assign_QueueTag(7)
          wait = False
        
        wait = True
        while wait:
         if all_close(joint_goal_c, tm5_700.move_group.get_current_joint_values()):
          i +=1
          wait = False
    

  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()