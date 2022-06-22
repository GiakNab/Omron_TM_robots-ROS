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


def attach_collision_box(obj_name, box_name, grasping_group):
    touch_links = obj_name.robot.get_link_names(group=grasping_group)
    obj_name.scene.attach_box(obj_name.eef_link, box_name, touch_links=touch_links)

    return wait_for_state_update(obj_name, box_name)

def detach_collision_box(obj_name, box_name):
    obj_name.scene.remove_attached_object(obj_name.eef_link, name=box_name)

    return wait_for_state_update(obj_name, box_name)

def wait_for_state_update(obj_name, box_name, box_is_known=False, box_is_attached=False, timeout=4):

    start = rospy.get_time()
    seconds = rospy.get_time()
    while (seconds - start < timeout) and not rospy.is_shutdown():
      # Test if the box is in attached objects
      attached_objects = obj_name.scene.get_attached_objects([box_name])
      is_attached = len(attached_objects.keys()) > 0

      # Test if the box is in the scene.
      # Note that attaching the box will remove it from known_objects
      is_known = box_name in obj_name.scene.get_known_object_names()

      # Test if we are in the expected state
      if (box_is_attached == is_attached) and (box_is_known == is_known):
        return True

      # Sleep so that we give other threads time on the processor
      rospy.sleep(0.1)
      seconds = rospy.get_time()

    # If we exited the while loop without returning then we timed out
    return False


def main():
  try:   
    #Istantiate the object 'test' from class TMRobotMoveGroupPy, default planner ="SBL"
    tm5_700 = TMRobotMoveGroupPy("tm5_700_arm")
    grasping_group="tm5_700_arm"

    tm5_700.move_group.allow_replanning(True)
    tm5_700.move_group.set_planning_time(10) #seconds

    planning_frame = tm5_700.move_group.get_planning_frame()

    
    print("end-effector information", tm5_700.eef_link)
    print("planning_frame", planning_frame)

    joint_goal0 = [0, 0, pi/2, 0, pi/2, 0]

    tm5_700.joint_state_move(joint_goal0)

    i = 0
    x_offset = 0
    y_offset = 0 
    z_offset = 0

    while i<4:

      box_name = "box" + str(i)

      tm5_700.joint_state_move(joint_goal0)

      # Define points
      pose_goal0 = geometry_msgs.msg.Pose()
      pose_goal0.position.x = 0.20 + x_offset
      pose_goal0.position.y = 0.25 + y_offset
      pose_goal0.position.z = 0.5
      pose_goal0.orientation.x = 0
      pose_goal0.orientation.y = 1
      pose_goal0.orientation.z = 0
      pose_goal0.orientation.w = 0

      tm5_700.pose_state_move(pose_goal0)

      #cartesian path 1
      pose_goal1 =  tm5_700.move_group.get_current_pose().pose
      pose_goal1.position.z -= 0.22 #movement of 0.1 m along z axes of end-effector

      waypoints = []
      waypoints.append(copy.deepcopy(pose_goal1))
      cartesian_path1, fract1, waypoints1 = tm5_700.plan_cartesian_path(waypoints)
      tm5_700.execute_plan(cartesian_path1, pose_goal1)

      attach_collision_box(tm5_700, box_name, grasping_group)

      pose_goal2 =  pose_goal0
      waypoints = []
      waypoints.append(copy.deepcopy(pose_goal2))
      cartesian_path2, fract1, waypoints1 = tm5_700.plan_cartesian_path(waypoints)
      tm5_700.execute_plan(cartesian_path2, pose_goal2)

      joint_goal1 = [1.85, 0.25, -1.32, -0.50, -1.57, 0]
      tm5_700.joint_state_move(joint_goal0)

      pose_goal_int = geometry_msgs.msg.Pose()
      pose_goal_int.position.x = 0.20 + x_offset
      pose_goal_int.position.y = -0.25 - y_offset
      pose_goal_int.position.z = 0.5 
      pose_goal_int.orientation.x = 1
      tm5_700.pose_state_move(pose_goal_int)

      #cartesian path 2
      pose_goal3 = pose_goal_int
      pose_goal3.position.z = 0.5 - 0.22

      waypoints = []
      waypoints.append(copy.deepcopy(pose_goal3))
      cartesian_path1, fract1, waypoints1 = tm5_700.plan_cartesian_path(waypoints)
      tm5_700.execute_plan(cartesian_path1, pose_goal3)

      detach_collision_box(tm5_700, box_name)

      joint_goal2 = tm5_700.move_group.get_current_joint_values()

      joint_goal2[1] -= 0.1
      joint_goal2[2] -= 0.1
      joint_goal2[3] -= 0.1

      tm5_700.joint_state_move(joint_goal2)

      # to_do: add an intermediate position moving the joints 
      #joint_goal2 = [-0.29, 0.11, 1.38, -0.06, 1.57, 1.27]

      i +=1
      if i == 1 or i == 2:
        x_offset += 0.1
      elif i == 3:
        y_offset += 0.1

  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()