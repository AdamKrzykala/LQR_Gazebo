execute_process(COMMAND "/home/adam/Desktop/catkin_ws/build/turtlebot3/turtlebot3_lqr/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/adam/Desktop/catkin_ws/build/turtlebot3/turtlebot3_lqr/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
