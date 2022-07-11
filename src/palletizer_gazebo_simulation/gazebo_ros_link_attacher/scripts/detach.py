#!/usr/bin/env python

import rospy
from gazebo_ros_link_attacher.srv import Attach, AttachRequest, AttachResponse


if __name__ == '__main__':
    rospy.init_node('demo_detach_links')
    rospy.loginfo("Creating ServiceProxy to /link_attacher_node/detach")
    attach_srv = rospy.ServiceProxy('/link_attacher_node/detach',
                                    Attach)
    attach_srv.wait_for_service()
    rospy.loginfo("Created ServiceProxy to /link_attacher_node/detach")

    # Link them
    rospy.loginfo("Detaching cube1 and cube2")
    req1 = AttachRequest()
    req1.model_name_1 = "cube1"
    req1.link_name_1 = "link"
    req1.model_name_2 = "cube2"
    req1.link_name_2 = "link"

    attach_srv.call(req1)

    raw_input()
    # From the shell:
    """
rosservice call /link_attacher_node/detach "model_name_1: 'cube1'
link_name_1: 'link'
model_name_2: 'cube2'
link_name_2: 'link'"
    

    rospy.loginfo("detach cube2 and cube3")
    req2 = AttachRequest()
    req2.model_name_1 = "cube2"
    req2.link_name_1 = "link"
    req2.model_name_2 = "cube3"
    req2.link_name_2 = "link"

    attach_srv.call(req2)

    rospy.loginfo("detach cube3 and cube1")
    req3 = AttachRequest()
    req3.model_name_1 = "cube3"
    req3.link_name_1 = "link"
    req3.model_name_2 = "cube1"
    req3.link_name_2 = "link"

    attach_srv.call(req3)
    """

    
