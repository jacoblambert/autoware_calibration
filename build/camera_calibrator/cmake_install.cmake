# Install script for directory: /home/kusanagi/Documents/workspaces/autoware_calibrator/src/camera_calibrator

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kusanagi/Documents/workspaces/autoware_calibrator/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator/catkin_generated/installspace/camera_calibrator.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_calibrator/cmake" TYPE FILE FILES
    "/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator/catkin_generated/installspace/camera_calibratorConfig.cmake"
    "/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator/catkin_generated/installspace/camera_calibratorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/camera_calibrator" TYPE FILE FILES "/home/kusanagi/Documents/workspaces/autoware_calibrator/src/camera_calibrator/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/camera_calibrator" TYPE PROGRAM FILES "/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator/catkin_generated/installspace/cameracalibrator.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/camera_calibrator" TYPE PROGRAM FILES "/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator/catkin_generated/installspace/cameracheck.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/camera_calibrator" TYPE PROGRAM FILES "/home/kusanagi/Documents/workspaces/autoware_calibrator/build/camera_calibrator/catkin_generated/installspace/tarfile_calibration.py")
endif()

