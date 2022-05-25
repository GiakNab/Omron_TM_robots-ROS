# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tm_msgs: 4 messages, 8 services")

set(MSG_I_FLAGS "-Itm_msgs:/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv" ""
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv" ""
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv" ""
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv" ""
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv" ""
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv" ""
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv" ""
)

get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv" NAME_WE)
add_custom_target(_tm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tm_msgs" "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_msg_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_msg_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_msg_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)

### Generating Services
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)
_generate_srv_cpp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
)

### Generating Module File
_generate_module_cpp(tm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tm_msgs_generate_messages tm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_cpp _tm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tm_msgs_gencpp)
add_dependencies(tm_msgs_gencpp tm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_msg_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_msg_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_msg_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)

### Generating Services
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)
_generate_srv_eus(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
)

### Generating Module File
_generate_module_eus(tm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tm_msgs_generate_messages tm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_eus _tm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tm_msgs_geneus)
add_dependencies(tm_msgs_geneus tm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_msg_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_msg_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_msg_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)

### Generating Services
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)
_generate_srv_lisp(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
)

### Generating Module File
_generate_module_lisp(tm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tm_msgs_generate_messages tm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_lisp _tm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tm_msgs_genlisp)
add_dependencies(tm_msgs_genlisp tm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_msg_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_msg_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_msg_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)

### Generating Services
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)
_generate_srv_nodejs(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
)

### Generating Module File
_generate_module_nodejs(tm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tm_msgs_generate_messages tm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_nodejs _tm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tm_msgs_gennodejs)
add_dependencies(tm_msgs_gennodejs tm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_msg_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_msg_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_msg_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)

### Generating Services
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)
_generate_srv_py(tm_msgs
  "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
)

### Generating Module File
_generate_module_py(tm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tm_msgs_generate_messages tm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/FeedbackState.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetPositions.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/ConnectTM.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SctResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/WriteItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/SvrResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SetEvent.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/SendScript.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/msg/StaResponse.msg" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskSta.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giacomo/git_workspace/omron_test_ws/src/tmr_ros1/tm_msgs/srv/AskItem.srv" NAME_WE)
add_dependencies(tm_msgs_generate_messages_py _tm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tm_msgs_genpy)
add_dependencies(tm_msgs_genpy tm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tm_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(tm_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(tm_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(tm_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tm_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(tm_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(tm_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(tm_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tm_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(tm_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
