#!/usr/bin/env python

import rospy
from gazebo_ros_link_attacher.srv import Attach, AttachRequest, AttachResponse


if __name__ == '__main__':
    rospy.init_node('demo_attach_links')
    rospy.loginfo("Creating ServiceProxy to /link_attacher_node/attach")
    attach_srv = rospy.ServiceProxy('/link_attacher_node/attach',
                                    Attach)
    attach_srv.wait_for_service()
    rospy.loginfo("Created ServiceProxy to /link_attacher_node/attach")

    rospy.loginfo("Attaching cube to the arm")
    req = AttachRequest()
    req.model_name_1 = "cube0"
    req.link_name_1 = "base_link"
    req.model_name_2 = "robot"
    req.link_name_2 = "wrist_3_link"

    attach_srv.call(req)

    raw_input()

    detach_srv = rospy.ServiceProxy('/link_attacher_node/detach',
                                    Attach)
    detach_srv.wait_for_service()
    rospy.loginfo("Created ServiceProxy to /link_attacher_node/detach")

    rospy.loginfo("detach cube to the arm")
    req2 = AttachRequest()
    req2.model_name_1 = "cube0"
    req2.link_name_1 = "base_link"
    req2.model_name_2 = "robot"
    req2.link_name_2 = "wrist_3_link"

    detach_srv.call(req2)

