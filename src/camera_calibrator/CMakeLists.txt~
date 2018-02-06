cmake_minimum_required(VERSION 2.8)
project(camera_calibrator)

find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  image_geometry
  message_filters
  rospy
  rostest
  sensor_msgs
  std_srvs
)

catkin_package()

catkin_python_setup()

catkin_install_python(PROGRAMS nodes/cameracalibrator.py
  nodes/cameracheck.py
  scripts/tarfile_calibration.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
