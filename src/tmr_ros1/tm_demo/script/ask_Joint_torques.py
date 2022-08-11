#!/usr/bin/env python
"""
This file use pickle library to store joint torques information. In particular the signals are acquired at 40Hz
once we reach the length of tot the file joint_torque_values is created.
"""

import pickle
import rospy
from tm_msgs.msg import *
from tm_msgs.srv import *

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + ': id: %s, content: %s\n', data.id, data.content)

def ask_item_demo():
    rospy.init_node('ask_item_demo')

    # listen to 'tm_driver/svr_response' topic
    rospy.Subscriber('tm_driver/svr_response', SvrResponse, callback)

    # using 'tm_driver/ask_item' service
    rospy.wait_for_service('tm_driver/ask_item')
    ask_item = rospy.ServiceProxy('tm_driver/ask_item', AskItem, persistent=True)

    r = rospy.Rate(40) #Hz
    Joint_Torques = []
    tot = 50000
    i = 0
    
    #write binary = wb
    file = open('joint_torque_values', 'wb')

    while i != tot :

      resj = ask_item('jt', 'Joint_Torque', 1) 
      Joint_Torques.append(resj.value)

      i +=1
      if i == tot - 1 :
        pickle.dump(Joint_Torques, file)
        print(Joint_Torques)
      r.sleep()

    file.close()
    raw_input("stop?")


if __name__ == '__main__':
    try:
        while (1):
          ask_item_demo()

    except rospy.ROSInterruptException:
        pass
