#!/usr/bin/env python

import rospy, tf, rospkg, random
from gazebo_msgs.srv import DeleteModel, SpawnModel, GetModelState
from geometry_msgs.msg import Quaternion, Pose, Point

class CubeSpawner():
    def __init__(self, name):
        self.name = name
        self.rospack = rospkg.RosPack()
        self.path = self.rospack.get_path('demo_world')+"/urdf/"
        self.cubes = []
        self.cubes.append(self.path+"red_cube.urdf")
       
        self.sm = rospy.ServiceProxy("/gazebo/spawn_urdf_model", SpawnModel)
        self.dm = rospy.ServiceProxy("/gazebo/delete_model", DeleteModel)
        self.ms = rospy.ServiceProxy("/gazebo/get_model_state", GetModelState)

    def checkModel(self):
        res = self.ms(self.name, "world")
        return res.success

    def getPosition(self):
    	res = self.ms(self.name, "world")
    	return res.pose.position.z

    def spawnModel(self):
		# print(self.col)
    	with open(self.cubes[0],"r") as f:
         cube_urdf = f.read()
         quat = tf.transformations.quaternion_from_euler(0,0,0)
         orient = Quaternion(quat[0],quat[1],quat[2],quat[3])
         pose = Pose(Point(x=1.0,y=+0.42,z=0.87), orient) #tcp_offset 
         succeded = self.sm(self.name, cube_urdf, '', pose, 'world') 

         return succeded


    def deleteModel(self):
    	self.dm(self.name)
    	rospy.sleep(1)

    def shutdown_hook(self):
    	self.deleteModel()
    	print("Shutting down")

class SlipsheetSpawner():
    def __init__(self, name):
        self.name = name
        self.rospack = rospkg.RosPack()
        self.path = self.rospack.get_path('demo_world')+"/urdf/"
        self.cubes = []
        self.cubes.append(self.path+"blue_slipsheet.urdf")
       
        self.sm = rospy.ServiceProxy("/gazebo/spawn_urdf_model", SpawnModel)
        self.dm = rospy.ServiceProxy("/gazebo/delete_model", DeleteModel)
        self.ms = rospy.ServiceProxy("/gazebo/get_model_state", GetModelState)

    def spawnModel(self):
		# print(self.col)
    	with open(self.cubes[0],"r") as f:
         cube_urdf = f.read()
         quat = tf.transformations.quaternion_from_euler(0,0,0)
         orient = Quaternion(quat[0],quat[1],quat[2],quat[3])
         pose = Pose(Point(x=0.6,y=+0.1,z=0.7), orient) #tcp_offset 
         succeded = self.sm(self.name, cube_urdf, '', pose, 'world') 

         return succeded


#if __name__ == "__main__":
#	print("Waiting for gazebo services...")
#	rospy.init_node("spawn_cubes")
#	rospy.wait_for_service("/gazebo/delete_model")
#	rospy.wait_for_service("/gazebo/spawn_urdf_model")
#	rospy.wait_for_service("/gazebo/get_model_state")
#	r = rospy.Rate(15)
#	cs = CubeSpawner()
#	rospy.on_shutdown(cs.shutdown_hook)
#	while not rospy.is_shutdown():
#		if cs.checkModel()==False:
#			cs.spawnModel()
#		elif cs.getPosition()<0.05:
#			cs.deleteModel()
#		r.sleep()
		
