#!/usr/bin/env python

import rospy, tf, rospkg, random
from gazebo_msgs.srv import DeleteModel, SpawnModel, GetModelState
from geometry_msgs.msg import Quaternion, Pose, Point
from GazeboSpawner import CubeSpawner
from gazebo_ros_link_attacher.srv import Attach, AttachRequest, AttachResponse

def main():

    print("Waiting for gazebo services...")
    rospy.init_node("spawn_cubes")
    rospy.wait_for_service("/gazebo/delete_model")
    rospy.wait_for_service("/gazebo/spawn_urdf_model")
    rospy.wait_for_service("/gazebo/get_model_state")
    r = rospy.Rate(15)
#    rospy.on_shutdown(cs.shutdown_hook)

    i=0
    while not rospy.is_shutdown():
        name="cube" + str(i)
        cs = CubeSpawner(name)
        print("Enter ok to spawn",  name)
        if raw_input() == "ok":
            succeded = cs.spawnModel()
            i+=1
            print(succeded)

            if raw_input("press to delete model") =="ok":
                cs.deleteModel()
            else:
                continue

        else:
            rospy.on_shutdown


if __name__ == '__main__':
    main()
