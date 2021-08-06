source /opt/ros/noetic/setup.bash
# Creating new paths for clients
#python3 pathsCreator.py

# Starting DES server
source devel/setup.bash
cd src/turtlebot3/turtlebot3_lqr/nodes/
gnome-terminal -- python3 DES.py

#source /opt/ros/noetic/setup.bash
# Starting LQRs for local robots - clients
gnome-terminal -- python3 LQRcontroller.py 1
gnome-terminal -- python3 LQRcontroller.py 2
gnome-terminal -- python3 LQRcontroller.py 3 
gnome-terminal -- python3 LQRcontroller.py 4

