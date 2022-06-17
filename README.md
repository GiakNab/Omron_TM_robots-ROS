
# __Omron TM robots ROS user guide__

This repo has been forked from [tmr_ros1]( https://github.com/TechmanRobotInc/tmr_ros1), for any issue regarding the ROS driver refers to techman robot page.
The additional packages you will find in this repo have been developed in collaboration with the Robotics team of the Omron ATC Barcellona during my PhD visiting period. <br/>
This repo has been tested using the __TM5-700__ with __TMFlow 1.84.2200__ , with __ROS Melodic__, __MoveIt__, __Gazebo 9.19.0__ under __Ubuntu 18.04__.<br/>
## &sect; __How to navigate into this Repository__
The __tmr_ros1__ folder is a metapackage containing the driver, standard msgs and urdf description folders of the Omron robots. The other pkgs outside the metapkg are still under developing and will be merded once properly working.

I’m developing new packages which enable the use of tools like MoveIt and Gazebo with Omron collaborative robots. For the moment only pkgs relative to TM5-700 robotic arm has been well developed.<br>


## __1.What the ROS Driver does?__

The existing TM ROS driver is a __single ROS node__ that handles robot(TMFlow)-pc(ROS) communication through an ethernet cable (rj45), implementing the TCP/IP communication protocols described in [espression_editor](src/documents/tm_expression_editor_and_listen_node_manual.pdf).  In details the driver connects to _TMflow Ethernet Slave_ and to a _Listen node_ running at a _TMflow project_. Thanks to this the user can get the robot state and can control the robot using _External Script_. <br/>
The TM ROS driver node also offers the following interfaces:

> __Action Server__
>
> - An  action interface on _/follow_joint_trajectory_ for integration with MoveIt; the action allows the execution of the trajectory planned on Moveit
>
> __Topic Publisher__
>
> - publish feedback state on _/feedback_states_  
feedback state include robot position, error code, io state, etc.
(see _tm_msgs/msg/FeedbackState.msg_)  
> - publish joint states on _/joint_states_  
> - publish tool pose on _/tool_pose_
>
> __Service Server__
>
> - _/tm_driver/send_script_ (see _tm_msgs/srv/SendScript.srv_) :  
send external script to _Listen node_  
> - _/tm_driver/set_event_ (see _tm_msgs/srv/SetEvent.srv_) :  
send command like "Stop", "Pause" and "Resume"  to _Listen node_  
> - _/tm_driver/set_io_ (see _tm_msgs/srv/SetIO.srv_) :  
send digital or analog output value to _Listen node_  
> - _/tm_driver/set_position (see _tm_msgs/srv/SetPosition.srv_) :  
send motion command to _Listen node_, the motion type include PTP, LINE, CIRC ans PLINE, the position value is joint angle(__J__) or tool pose(__T__), see [[Expression Editor and Listen Node.pdf]]
>
>

## __2. Setup__
In this part is explained step by step how to establish a connection with the Robot's Listen Node and start the communication.<br/>

### &sect; __Omron TM robot setting__
1) Download and upload on the robot the "Data_Table_Setting_TM_ROS_Default.xml", a file from which is possible to select the R & W variables accessible from the controller. 

$ cd ~/Desktop
$ git clone https://github.com/TechmanRobotInc/TM_Export

2) Place the downloaded component in a USB stick labeled "TMROBOT", insert the USB in the robot controller then on TM flow navigate to => System => Import/Export in order to import the component onto the robot. (follow the steps here if necessary [how to insert the USB flash drive to the Control Box](https://github.com/TechmanRobotInc/TM_Export))

3) Shutdown the robot.

### &sect; __Ubuntu 18.04 Virtual Machine setup__
If necessary create a virtual machine with __Ubuntu 18.04__ (Bionic). The steps to create the virtual machine with VirtualBox can be found in [Ubuntu](https://www.toptechskills.com/linux-tutorials-courses/how-to-install-ubuntu-1804-bionic-virtualbox/). <br/>

![1](src/figures/ubuntu.png)

To allow the TCP/IP connection with the robot it is required to modify the default network settings.  <br/>
The default virtual network adapter uses __NAT__ (Network Address Translation) mode.
With this mode the guest operating system can access external networks, including the internet, but the guest machine is not accessible from the outside.

![2](src/figures/net1.png)

So a new virtual network adapter that uses __Bridged Adapter__ must be enabled. With this mode packets are sent and received directly from/to the virtual network adapter without additional routing so that the VM can be accessed from other hosts connected to the physical network.<br/>
The correct network adapter must be selected (the physical adapter used for the connection with the robot).

![3](src/figures/net2.png)

Finally a proper __static IP__ address must be assigned to the VM so that the VM and the robot belong to the same __private network__.

![4](src/figures/net3.png)

### &sect; __ROS Melodic setup__
The steps to install ROS Melodic on Ubuntu can be found in [Melodic](http://wiki.ros.org/melodic/Installation/Ubuntu). The steps from 1.1 to 1.5 are sufficient. It is recommanded to install the _Desktop-Full_ version to prevent installing manually missing packages. <br/>
Despite this, some packages (such as Moveit) could still be missing, giving error at compile time. They can be installed with the following command:

```
sudo apt install ros-melodic-PACKAGE
```
If ROS Melodic is the only ROS version currently used, it is suggested to modify the _.bashrc_ file (is an hidden file) to automatically add the ROS environment variables to your bash session every time a new shell is launched (step 1.5 of [Melodic](http://wiki.ros.org/melodic/Installation/Ubuntu)).

```
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

Otherwise it must be source in every new shell in order to use ROS commands.
```
source /opt/ros/melodic/setup.bash
```


### &sect; __Download and copile the repository__
Download the git repository, unzip it and copy just the _src_ folder into your working directory.<br/>
Open the terminal from the _src_ folder of your working directory and compile the workspace with the following command:

```
catkin_make
```
The compilation creates the two new folder _build_ and _devel_.
It is suggested to modify the _.bashrc_ file to automatically add the workspace enviroment to your bash session every time a new shell is launched. Otherwise it must be source in every new shell in order to launch launch files or run nodes.

```
source [PATH]/[WORKING_DIRECTORY_NAME]/devel/setup.bash
```
![5](src/figures/source.png)

###  &sect; __Physical connection to TM ROBOT__
The robot and the pc must be physically connected through an __ethernet cable__ (rj45). <br/>
:bulb:__WARNING__ Connect the ethernet cable to the __LAN__ port of the control box.

<p align="center">
  <img alt="1" src="src/figures/LAN.jpg" width="45%">
&nbsp; &nbsp; &nbsp; &nbsp;
  <img alt="2" src="src/figures/LAN1.jpg" width="45%">
</p>

### &sect; __TMFlow setup__
On the robot side the steps to enable the communication are the following:

1. Create a new TMFlow project with an infinite loop on a __Listen__ node. Just drag the node from the _nodes menu_, the node parameters can be left to their default value.

![6](src/figures/listen2.png)

When the process enters the Listen Node, it __stays in the Listen Node__ until it triggers and leaves with one of the two exit condition:<br/>
__Pass__: executes ScriptExit() or item stopped <br/>
__Fail__: connection Timeout or data Timeout or before the Socket Server been established successfully, the flow process has entered the Listen Node <br/>
So then connect the _Fail Path_ to a _Stop_ node and the _Pass Path_ to a _Goto_ node to loop back to the listen node.

 ![7](src/figures/listen1.png)

2. The network settings in __System &rArr; Network__ can be left to their __default__ value.
This step is different from what [tmr_ros1]( https://github.com/TechmanRobotInc/tmr_ros1) describes. Connecting the ethernet cable to the only one __LAN__ port (not the GigE ports) of the control box, the Ethernet Slave and the Listen open on __169.254.77.215__.
It is sufficient to set the static ip of the Virtual Machine so that it belongs to the same private network (__for example 169.254.77.210__).

 ![8](src/figures/open.png)

:bulb:__WARNING__ __Not connect__ the ethernet cable to a __GigE LAN__ port otherwise the Ethernet Slave and the Listen open on the local host 127.0.0.1 and the connection fails <br/>
:bulb:__WARNING__ If the Ethernet Slave and the Listen still open on the __local host 127.0.0.1__ try the other port though


3. Enable the __Ethenet Slave__ and set the __Ethernet Slave Data Table__ from __Setting &rArr; Connection &rArr; Ethernet Slave__.

 ![9](src/figures/ethernet1.png)

 The __Data Table__ or __Transmit File__ is a customizable list of items that are trasmitted between the Ethernet Slave and clients. In particular when the Ethernet Slave is enabled, the data items in this file are send to the connected clients periodically. <br/>
 These items can be __predefined__ variables, __user defined__ variable or __global variable__. <br/>
 The following items must be selected and added to the transmit file:

- [x] Robot_Error
- [x] Project_Run
- [x] Project_Pause
- [x] Safeguard_A
- [x] ESTOP
- [x] Camera_Light
- [x] Error_Code
- [x] Joint_Angle
- [x] Coord_Robot_Flange
- [x] Coord_Robot_Tool
- [x] TCP_Force
- [x] TCP_Force3D
- [x] TCP_Speed
- [x] TCP_Speed3D
- [x] Joint_Speed
- [x] Joint_Torque
- [x] Project_Speed
- [x] MA_Mode
- [x] Robot Light
- [x] Ctrl_DO0~DO7
- [x] Ctrl_DI0~DI7
- [x] Ctrl_AO0
- [x] Ctrl_AI0~AI1
- [x] END_DO0~DO3
- [x] END_DI0~DI2
- [x] END_AI0

 ![10](src/figures/ethernet2.png)

Another way to set the __Ethernet Slave Data Table__ settings is to directly import the transmit file from [TM ROS Driver vs TMflow software Usage : Import Data Table Setting](https://github.com/TechmanRobotInc/TM_Export).

4. Run the TMFlow project on the robot side and open a terminal on the pc side. <br/>
Check the robot-pc connection with a __ping__ to the robot ip address.

 ![13](src/figures/ping.png)


## __3. Usage__
After following all the steps described in section 2, the following __launch file__ can be launched:

- __loop_trajectory.launch__
- __pick_place_trajectory.launch__
- __moveit_trajectory.launch__
- __test_functions.launch__

The ROS command to open these files is the following:
```
roslaunch obstacle_avoidance [LAUNCH_FILE_NAME]
```
:bulb: WARNING: The __default robot ip address__ is 169.254.77.215; if the robot has a different ip these launch files must be modified changing the value of the parameter _robot_ip_address_ of the __tm_driver__ node.


###  &sect; __test_functions__
This launch file starts the __tm_driver__ node for the robot-pc communication and a __send_script_node__ to test the __External Script__ commands available (for the commands refers to [espression_editor](src/documents/tm_expression_editor_and_listen_node_manual.pdf)). <br/>
To __test a new command__ just create a string variable with the desired command and assign it to _srv.request.script_.

![14](src/figures/test.png)

###  &sect; __loop_trajectory__
This launch file starts the following nodes:
- __tm_driver__: the usual node for the robot-pc communication
- __loop_trajectory_node__: this node gives the robot the commands to execute a __predefined trajectory__ in a loop; here the trajectory is just Joint1 (shoulder_1_joint) rotating by +- 90°
- __obstacle_avoidance_naive_loop_node__: this node handles the obstacle avoidance; when ad obstacle is detected it gives the robot the commands to __stop__ the current trajectory and to return to the __home__ pose

To simulate an obstacle detection the __obstacle_detection_naive_node__ must be run with the following command:

```
rosrun obstacle_avoidance obstacle_detection_naive_node
```
This node publishes a custom naive __ObstacleDetected__ message to the topic __tm_driver/obstacle_detected__ that is subscribed by __obstacle_avoidance_naive_loop_node__. <br/>
So launching the __loop_trajectory.launch__ the robot starts a predefined trajectory in a loop; when the __obstacle_detection_naive_node__ is run the robot stops and returns to the home pose.

###  &sect; __pick_place_trajectory__
This launch file is similar to the previous one; the only difference is a more complex __predefined trajectory__ that simulates a __pick and place task__ executed in a loop.
The launch file starts the following nodes:
- __tm_driver__: the usual node for the robot-pc communication
- __pick_place_trajectory_node__: this node gives the robot the commands to execute a __predefined trajectory__ in a loop; here the trajectory is sequence of 4 points to simulate a pick and place task
- __obstacle_avoidance_naive_pick_node__: this node handles the obstacle avoidance; when ad obstacle is detected it gives the robot the commands to __stop__ the current trajectory and to return to the __home__ pose

To simulate an obstacle detection the same __obstacle_detection_naive_node__ must be run.

###  &sect; __moveit_trajectory__
This launch file allows the same obstacle avoidance logic of the previous ones but with a trajectory not predefined but planned through __MoveIt__. <br/>
MoveIt is an __RViz plugin__ and __Rviz__ is the primary visualizer in ROS. The MoveIt Rviz plugin allows you to setup virtual environments (scenes), create __start__ and __goal states__ for the robot interactively, test various __motion planners__ and visualize the output. <br/>
In [tmr_ros1]( https://github.com/TechmanRobotInc/tmr_ros1) there is already a launch file to __control the robot through MoveIt__ that can still be launched with the command:

```
roslaunch tm5_900_moveit_config tm5_900_moveit_planning_execution.launch sim:=False robot_ip:=<robot_ip_address>
```

When the launch file is run, the Rviz window will open, showing the robot __current pose__ that is the default start state. The user can choose the __goal state__, selecting it from the drop-down menu or manually moving the robot goal state. <br/>
The states in the drop-down menu are defined in [tm5_900.srdf](src/tm5_900_moveit_config/config/tm5_900.srdf)

![15](src/figures/states.png)

With the __Plan__ buttom MoveIt plans and shows the trajectory from the start state to the goal state. After the planning, with the __Execute__ buttom, the user can ask the execution of the planned trajectory.

![16](src/figures/moveit.png)

Starting from this a new launch file has been created adding a node __obstacle_avoidance_naive_moveit_node__. This node, as the others, handles the obstacle avoidance, giving the robot the commands to __stop__ the current trajectory and to return to the __home__ pose. The obstacle detection can be simulated running the same __obstacle_detection_naive_node__.
