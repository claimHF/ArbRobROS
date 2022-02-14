# Use this file to run additional tasks before the catkin_make command is triggered
# e.g. updating dependencies
# If no pre-make tasks are required, the file can be deleted. 

cd $CATKIN_WS/src
if [ ! -d "$CATKIN_WS/src/ros_file_server" ]; then
  git clone https://github.com/gramaziokohler/ros_file_server.git
fi

# get UR
if [ ! -d "$CATKIN_WS/src/universal_robot" ]; then
  git clone -b ${ROS_DISTRO}-devel https://github.com/ros-industrial/universal_robot.git
fi

if [ ! -d "$CATKIN_WS/src/urdf_tutorial" ]; then
  git clone https://github.com/ros/urdf_tutorial.git
fi

# Install dependencies
apt-get install -y ros-${ROS_DISTRO}-joint-state-publisher ros-${ROS_DISTRO}-joint-state-publisher-gui ros-${ROS_DISTRO}-industrial-core ros-${ROS_DISTRO}-robot-state-publisher liburdfdom-tools
apt-get install -y nano