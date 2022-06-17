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
from tm_msgs.msg import *
from tm_msgs.srv import *

class TMRobotMoveGroupPy:

    def __init__(self, group_name, planner_id = "SBL"):
         ## First initialize `moveit_commander`_ and a `rospy`_ node:
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('move_group_python_interface_tutorial', anonymous=True)

        ## Instantiate a `RobotCommander`_ object. Provides information such as the robot's
        ## kinematic model and the robot's current joint states
        self.robot=moveit_commander.RobotCommander()

        ## Instantiate a `PlanningSceneInterface`_ object.
        self.scene=moveit_commander.PlanningSceneInterface()
    
        #This is a string with the name of the planner group for the arm e.g. "tm5_700_arm"
        self.group_name = group_name
        self.move_group = moveit_commander.MoveGroupCommander(group_name)
        
        #This function is used to set the planner check ompl_planning.yaml for the planner list
        self.move_group.set_planner_id(planner_id)
      
        #This is used to display a trajectory in Rviz before executing 
        self.display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)
      
        #Get the name of the frame where all planning is performed 
        self.planning_frame = self.move_group.get_planning_frame()
      
        #Get the name of the end-effector link for this group:
        self.eef_link = self.move_group.get_end_effector_link()

        #Get information about the available groups controllers in the robot, e.g.("tm5_700_arm", "gripper")
        self.group_names = self.robot.get_group_names()


    def joint_state_move(self, joint_goal):

        self.move_group.go(joint_goal, wait=True)
        # Calling ``stop()`` ensures that there is no residual movement
        self.move_group.stop()
        #self.current_joints = self.move_group.get_current_joint_values()

    def pose_state_move(self, pose_goal):

        #Set the pose of the end-effector
        self.move_group.set_pose_target(pose_goal)
        self.move_group.go(wait=True)
        # Calling `stop()` ensures that there is no residual movement
        self.move_group.stop()
        # It is always good to clear your targets after planning with poses.
        # Note: there is no equivalent function for clear_joint_value_targets()
        self.move_group.clear_pose_targets()

    def plan_cartesian_path(self, new_pose, waypoints=[], eef_step = 0.01, jump_threshold = 0.0):

        ## You can plan a Cartesian path directly by specifying a list of waypoints
        ## for the end-effector to go through. 
        waypoints.append(copy.deepcopy(new_pose))
        (plan, fraction) = self.move_group.compute_cartesian_path(waypoints,  eef_step, jump_threshold) 

        return plan, fraction, waypoints

    def display_trajectory(self, plan):
        ## A `DisplayTrajectory`_ msg has two primary fields, trajectory_start and trajectory.
        ## We populate the trajectory_start with our current robot state to copy over
        ## any AttachedCollisionObjects and add our plan to the trajectory.

        display_trajectory = moveit_msgs.msg.DisplayTrajectory()
        display_trajectory.trajectory_start = self.robot.get_current_state()
        display_trajectory.trajectory.append(plan)
        # Publish
        self.display_trajectory_publisher.publish(display_trajectory)

    def execute_plan (self, plan):
        #execute a planned path  
        self.move_group.execute(plan, wait=True)


# This class is useful when you want to send planned path to the real robots  
class TMRobotMotionFunctions():

      def __init__(self):

            # using services
            rospy.wait_for_service('tm_driver/set_event')
            rospy.wait_for_service('tm_driver/set_positions')
            rospy.wait_for_service('tm_driver/set_io')
            rospy.wait_for_service('tm_driver/ask_sta')
    
            #rospy.ServiceProxy(name, service_class, persistent=False, headers=None)
            self.set_event = rospy.ServiceProxy('tm_driver/set_event', SetEvent) 
            self.set_positions = rospy.ServiceProxy('tm_driver/set_positions', SetPositions)
            self.set_io = rospy.ServiceProxy('tm_driver/set_io', SetIO)
            self.ask_sta = rospy.ServiceProxy('tm_driver/ask_sta', AskSta)

      def assign_QueueTag(self,tag_number,wait=0):
          #int The tag_number. Valid for integers between 1 and 15.
          #int Wait for the tagging to continue processing or not. 0 Not wait (default), 1 Wait
           self.set_event(SetEventRequest.TAG, tag_number, wait)

      def check_QueueTag(self, tag_number):
          #Set robot motions with Queue Tag Numbers to denote the current robot motion in process. The
          #status of each queue tag can be monitored using TMSTA SubCmd 01
          res = self.ask_sta('01', tag_number, 1)

          if res.subcmd == '01':
            data = res.subdata.split(',')
            if data[1] == 'true':
                rospy.loginfo('point %d (Tag %s) is reached', tag_number, data[0])
            return data[1]
