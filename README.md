
# __Omron TM robots ROS user guide__

This repo has been forked from [tmr_ros1]( https://github.com/TechmanRobotInc/tmr_ros1), which provides the driver to connect with the physical robot, for any issue regarding the ROS driver refers to techman robot page.
The additional packages you will find in this repo have been developed in collaboration with the Robotics team of the Omron ATC Barcelona during my PhD visiting period. <br/>
This repo has been developed and tested using the __TM5-700__ with __TMFlow 1.84.2200__ , with __ROS Melodic__, __MoveIt__, __Gazebo 9.19.0__ under __Ubuntu 18.04__.<br/>

## &sect; __How to navigate into this Repository__
The __tmr_ros1__ folder is a metapackage containing the driver, standard msgs and urdf description folders of the Omron robots. The other pkgs outside the metapkg are still under developing and will be merded once properly working.

I’m developing new packages which enable the use of tools like MoveIt and Gazebo with Omron collaborative robots. For the moment only pkgs relative to TM5-700 robotic arm has been well developed.<br>


## __1.What the ROS Driver does?__

The existing TM ROS driver is a __single ROS node__ that handles robot(TMFlow)-pc(ROS) communication through an ethernet cable (rj45), implementing the TCP/IP communication protocols described in [espression_editor](src/documents/tm_expression_editor_and_listen_node_manual.pdf).  In details the driver connects to _TMflow Ethernet Slave_ and to a _Listen node_ running at a _TMflow project_. Thanks to this the user can get the robot state and can control the robot using _External Script_. <br/>
The TM ROS driver node offers different interfaces (Topic/Service), a Readme file is available in [tmr_ros1]( https://github.com/TechmanRobotInc/tmr_ros1).

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

To allow the TCP/IP connection with the robot it is required to modify the default network settings.  <br/>
The default virtual network adapter uses __NAT__ (Network Address Translation) mode.
With this mode the guest operating system can access external networks, including the internet, but the guest machine is not accessible from the outside.

![2](src/figures/net1.png)

So a new virtual network adapter that uses __Bridged Adapter__ must be enabled. With this mode packets are sent and received directly from/to the virtual network adapter without additional routing so that the VM can be accessed from other hosts connected to the physical network.<br/>
The correct network adapter must be selected (the physical adapter used for the connection with the robot).

![3](src/figures/net2.png)

Finally a proper __static IP__ address must be assigned to the VM so that the VM and the robot belong to the same __private network__.

![4](src/figures/net3.png)

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

4. Run the TMFlow project on the robot side and open a terminal on the pc side. <br/>
Check the robot-pc connection with a __ping__ to the robot ip address.

 ![13](src/figures/ping.png)


## __3. Usage__
After following all the steps described in section 2, the following __launch file__ can be launched:

