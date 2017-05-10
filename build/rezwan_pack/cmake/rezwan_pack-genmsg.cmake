# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rezwan_pack: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irezwan_pack:/home/rostest/rez2-robtech/src/rezwan_pack/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rezwan_pack_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg" NAME_WE)
add_custom_target(_rezwan_pack_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rezwan_pack" "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rezwan_pack
  "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rezwan_pack
)

### Generating Services

### Generating Module File
_generate_module_cpp(rezwan_pack
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rezwan_pack
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rezwan_pack_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rezwan_pack_generate_messages rezwan_pack_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg" NAME_WE)
add_dependencies(rezwan_pack_generate_messages_cpp _rezwan_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rezwan_pack_gencpp)
add_dependencies(rezwan_pack_gencpp rezwan_pack_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rezwan_pack_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rezwan_pack
  "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rezwan_pack
)

### Generating Services

### Generating Module File
_generate_module_lisp(rezwan_pack
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rezwan_pack
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rezwan_pack_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rezwan_pack_generate_messages rezwan_pack_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg" NAME_WE)
add_dependencies(rezwan_pack_generate_messages_lisp _rezwan_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rezwan_pack_genlisp)
add_dependencies(rezwan_pack_genlisp rezwan_pack_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rezwan_pack_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rezwan_pack
  "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rezwan_pack
)

### Generating Services

### Generating Module File
_generate_module_py(rezwan_pack
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rezwan_pack
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rezwan_pack_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rezwan_pack_generate_messages rezwan_pack_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rostest/rez2-robtech/src/rezwan_pack/msg/Mouse.msg" NAME_WE)
add_dependencies(rezwan_pack_generate_messages_py _rezwan_pack_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rezwan_pack_genpy)
add_dependencies(rezwan_pack_genpy rezwan_pack_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rezwan_pack_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rezwan_pack)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rezwan_pack
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(rezwan_pack_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rezwan_pack)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rezwan_pack
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(rezwan_pack_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rezwan_pack)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rezwan_pack\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rezwan_pack
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(rezwan_pack_generate_messages_py std_msgs_generate_messages_py)
