# Install script for directory: /home/giacomo/git_workspace/omron_test_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/giacomo/git_workspace/omron_test_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giacomo/git_workspace/omron_test_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giacomo/git_workspace/omron_test_ws/install" TYPE PROGRAM FILES "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giacomo/git_workspace/omron_test_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giacomo/git_workspace/omron_test_ws/install" TYPE PROGRAM FILES "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giacomo/git_workspace/omron_test_ws/install/setup.bash;/home/giacomo/git_workspace/omron_test_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giacomo/git_workspace/omron_test_ws/install" TYPE FILE FILES
    "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/setup.bash"
    "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giacomo/git_workspace/omron_test_ws/install/setup.sh;/home/giacomo/git_workspace/omron_test_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giacomo/git_workspace/omron_test_ws/install" TYPE FILE FILES
    "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/setup.sh"
    "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giacomo/git_workspace/omron_test_ws/install/setup.zsh;/home/giacomo/git_workspace/omron_test_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giacomo/git_workspace/omron_test_ws/install" TYPE FILE FILES
    "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giacomo/git_workspace/omron_test_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giacomo/git_workspace/omron_test_ws/install" TYPE FILE FILES "/home/giacomo/git_workspace/omron_test_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/giacomo/git_workspace/omron_test_ws/build/gtest/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm12_description/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm5_description/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tm700_gripper_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm_description/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/robotiq/robotiq_description/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tmr_description/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/robotiq/robotiq_gazebo/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm_msgs/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/demo/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm_demo/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm_driver/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/ui_for_debug_and_demo/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm700_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm12_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm12_nonvision_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm5_700_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm5_700_nonvision_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm5_900_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm5_900_nonvision_moveit_config/cmake_install.cmake")
  include("/home/giacomo/git_workspace/omron_test_ws/build/tmr_ros1/tm_gazebo/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/giacomo/git_workspace/omron_test_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
