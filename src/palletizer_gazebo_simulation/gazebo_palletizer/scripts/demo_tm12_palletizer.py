#!/usr/bin/env python

import sys
import copy
import rospy, tf, rospkg
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from GazeboSpawner import CubeSpawner
from OmronTMRobot import TMRobotMoveGroupPy
from moveit_commander.conversions import pose_to_list
from gazebo_msgs.srv import DeleteModel, SpawnModel, GetModelState
from gazebo_ros_link_attacher.srv import Attach, AttachRequest, AttachResponse


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
    #Istantiate the object 'test' from class TMRobotMoveGroupPy, default planner ="RRTConnect"
    tm12 = TMRobotMoveGroupPy("tm12_arm", "RRTConnect")
    grasping_group="tm12_arm"

    tm12.move_group.allow_replanning(True)
    tm12.move_group.set_planning_time(10) #seconds

    planning_frame = tm12.move_group.get_planning_frame()
    
    #print("end-effector information", tm12.eef_link)
    #print("planning_frame", planning_frame)

    # call all the Gazebo services to spawn and attach cubes
    print("Waiting for gazebo services...")
    #rospy.init_node("spawn_cubes")
    rospy.wait_for_service("/gazebo/delete_model")
    rospy.wait_for_service("/gazebo/spawn_urdf_model")
    rospy.wait_for_service("/gazebo/get_model_state")

    #rospy.init_node('demo_attach_links')
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
    name = "cube0"
    cs = CubeSpawner(name)
    succeded = cs.spawnModel()
    print(succeded)

    #go to starting position
    joint_goal0 = [0.0, 0.0, pi/2, 0.0, pi/2, 0]
    tm12.joint_state_move(joint_goal0)
    
    #go to pick position
    joint_goal1 = [0.1587972500356356, 0.7020295792255018, 1.231065157609768, -0.3615675297425698, 1.571451359357968, 0.15951670008629382]
    tm12.joint_state_move(joint_goal1)

    pose_goal0 = geometry_msgs.msg.Pose()
    pose_goal0.position.x = 1.05
    pose_goal0.position.y = 0.01
    pose_goal0.position.z = 1.1
    pose_goal0.orientation.x = 0.707
    pose_goal0.orientation.y = 0.707
    pose_goal0.orientation.z = 0
    pose_goal0.orientation.w = 0

    #tm12.pose_state_move(pose_goal0)
    
    #raw_input("continue?")

    #grab the box with the vaccum gripper
    req = AttachRequest()
    req.model_name_1 = "cube0"
    req.link_name_1 = "base_link"
    req.model_name_2 = "robot"
    req.link_name_2 = "wrist_3_link"
    attach_srv.call(req)

    joint_goal2 = [pi/2, 0.0, pi/2, 0.0, pi/2, 0.0]
    tm12.joint_state_move(joint_goal2)
    
    
    #pose_goal1 = joint_goal3
    pose_goal1 = geometry_msgs.msg.Pose()
    pose_goal1.position.x = -0.4
    pose_goal1.position.y = 0.5 + 0.6
    pose_goal1.position.z = 0.7
    pose_goal1.orientation.x = 0.707
    pose_goal1.orientation.y = 0.707
    pose_goal1.orientation.z = 0
    pose_goal1.orientation.w = 0

    joint_goal3 = [2.4923585118097726, 0.8007840587233197, 2.2360739108828795, -1.4657702756232398, 1.569753314701611, 2.492142505415428]
    tm12.joint_state_move(joint_goal3)

    detach_srv.call(req)

    tm12.joint_state_move(joint_goal2)
    tm12.joint_state_move(joint_goal0)

    #second box
    name = "cube1"
    cs = CubeSpawner(name)
    succeded = cs.spawnModel()

    tm12.pose_state_move(pose_goal0)

    req = AttachRequest()
    req.model_name_1 = "cube1"
    req.link_name_1 = "base_link"
    req.model_name_2 = "robot"
    req.link_name_2 = "wrist_3_link"
    attach_srv.call(req)

    tm12.joint_state_move(joint_goal2)

    pose_goal2 = pose_goal1
    pose_goal2.position.x += 0.35
    joint_goal4 = [1.9868226021582682, 0.8095587378068219, 2.491894590889199, -1.7297243101047197, 1.570350428119312, 1.9865664757621264]
    tm12.joint_state_move(joint_goal4)

    detach_srv.call(req)

    tm12.joint_state_move(joint_goal2)
    tm12.joint_state_move(joint_goal0)

    #third box
    name = "cube2"
    cs = CubeSpawner(name)
    succeded = cs.spawnModel()

    tm12.joint_state_move(joint_goal1)

    req = AttachRequest()
    req.model_name_1 = "cube2"
    req.link_name_1 = "base_link"
    req.model_name_2 = "robot"
    req.link_name_2 = "wrist_3_link"
    attach_srv.call(req)

    tm12.joint_state_move(joint_goal2)

    joint_goal5 = [2.0535404817247915, 1.2311589015926918, 0.9592305658601221, -0.6195946248178101, 1.5708580508528573, 2.053384039912384]

    tm12.joint_state_move(joint_goal5)

    detach_srv.call(req)

    tm12.joint_state_move(joint_goal2)
    tm12.joint_state_move(joint_goal0)

    #fourth box
    name = "cube3"
    cs = CubeSpawner(name)
    succeded = cs.spawnModel()

    tm12.joint_state_move(joint_goal1)

    req = AttachRequest()
    req.model_name_1 = "cube3"
    req.link_name_1 = "base_link"
    req.model_name_2 = "robot"
    req.link_name_2 = "wrist_3_link"
    attach_srv.call(req)

    tm12.joint_state_move(joint_goal2)

    joint_goal6 = [2.0535404817247915, 1.2311589015926918, 0.6592305658601221, -0.6195946248178101, 1.5708580508528573, 1.853384039912384]

    tm12.joint_state_move(joint_goal6)

    detach_srv.call(req)

    tm12.joint_state_move(joint_goal2)
    tm12.joint_state_move(joint_goal0)

    
  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()