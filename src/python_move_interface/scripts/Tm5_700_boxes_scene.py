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

# Functions to add collision boxes into the MoveIt scene

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


def add_collision_box(obj_name, box_name, pose, size):
    obj_name.scene.add_box(box_name, pose, size)

    return wait_for_state_update(obj_name, box_name)

def attach_collision_box(obj_name, box_name, grasping_group):
    touch_links = obj_name.robot.get_link_names(group=grasping_group)
    obj_name.scene.attach_box(obj_name.eef_link, box_name, touch_links=touch_links)

    return wait_for_state_update(obj_name, box_name)

def detach_collision_box(obj_name, box_name):
    obj_name.scene.remove_attached_object(obj_name.eef_link, name=box_name)

    return wait_for_state_update(obj_name, box_name)

def remove_collision_box(obj_name, box_name):
    obj_name.scene.remove_world_object(box_name)

    return wait_for_state_update(obj_name, box_name)

def main():
  try:   
    #Istantiate the object 'tm5_700' from class TMRobotMoveGroupPy, default planner ="SBL"
    tm5_700 = TMRobotMoveGroupPy("tm5_700_arm","SBL")

    grasping_group = "gripper"

    #print("end-effector information", tm5_700.eef_link)

    rospy.sleep(1)
    ## Define the object to insert into the scene    
    table_name1 = "table1"
    table_pose1 = geometry_msgs.msg.PoseStamped()
    table_pose1.header.frame_id = "world"
    table_pose1.pose.position.x = 0.4
    table_pose1.pose.position.y = 0.45
    table_pose1.pose.position.z = 0.015  
    table_size = (0.5, 0.5, 0.1)

    add_collision_box(tm5_700, table_name1, table_pose1, table_size)
    rospy.sleep(1)

    table_name2 = "table2"
    table_pose2 = geometry_msgs.msg.PoseStamped()
    table_pose2.header.frame_id = "world"
    table_pose2.pose.position.x = 0.4
    table_pose2.pose.position.y = -0.45
    table_pose2.pose.position.z = 0.015  

    add_collision_box(tm5_700, table_name2, table_pose2, table_size)
    rospy.sleep(1)

    box_name0 = "box0"
    box_pose0 = geometry_msgs.msg.PoseStamped()
    box_pose0.header.frame_id = "world"
    box_pose0.pose.position.x = 0.20
    box_pose0.pose.position.y = 0.25
    box_pose0.pose.position.z = 0.1 + 0.0025
    box_size = [0.05, 0.07, 0.05]

    add_collision_box(tm5_700, box_name0, box_pose0, box_size)
    rospy.sleep(1)

    box_name1 = "box1"
    box_pose1 = box_pose0
    box_pose1.pose.position.x += 2*box_size[0]

    add_collision_box(tm5_700, box_name1, box_pose1, box_size)
    rospy.sleep(1)

    box_name2 = "box2"
    box_pose2 = box_pose1
    box_pose2.pose.position.x += 2*box_size[0]
    print("box2 pose", box_pose2)

    add_collision_box(tm5_700, box_name2, box_pose2, box_size)
    rospy.sleep(1)

    box_name3 = "box3"
    box_pose3 = box_pose0
    box_pose3.pose.position.y += box_size[1] + 0.02
    print("box3 pose", box_pose3)

    add_collision_box(tm5_700, box_name3, box_pose3, box_size)

    print("check the objects and press ok for remove them")
    raw_input()

    remove_collision_box(tm5_700, box_name0)
    remove_collision_box(tm5_700, box_name1)
    remove_collision_box(tm5_700, box_name2)
    remove_collision_box(tm5_700, box_name3)
    remove_collision_box(tm5_700, table_name1)
    remove_collision_box(tm5_700, table_name2)


    print("The end")
    
  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()