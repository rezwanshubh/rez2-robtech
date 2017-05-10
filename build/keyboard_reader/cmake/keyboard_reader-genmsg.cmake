# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "keyboard_reader: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikeyboard_reader:/home/rostest/rez2-robtech/src/keyboard_reader/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(keyboard_reader_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg" NAME_WE)
add_custom_target(_keyboard_reader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "keyboard_reader" "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(keyboard_reader
  "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_reader
)

### Generating Services

### Generating Module File
_generate_module_cpp(keyboard_reader
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_reader
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(keyboard_reader_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(keyboard_reader_generate_messages keyboard_reader_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg" NAME_WE)
add_dependencies(keyboard_reader_generate_messages_cpp _keyboard_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_reader_gencpp)
add_dependencies(keyboard_reader_gencpp keyboard_reader_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_reader_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(keyboard_reader
  "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_reader
)

### Generating Services

### Generating Module File
_generate_module_lisp(keyboard_reader
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_reader
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(keyboard_reader_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(keyboard_reader_generate_messages keyboard_reader_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg" NAME_WE)
add_dependencies(keyboard_reader_generate_messages_lisp _keyboard_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_reader_genlisp)
add_dependencies(keyboard_reader_genlisp keyboard_reader_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_reader_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(keyboard_reader
  "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_reader
)

### Generating Services

### Generating Module File
_generate_module_py(keyboard_reader
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_reader
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(keyboard_reader_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(keyboard_reader_generate_messages keyboard_reader_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rostest/rez2-robtech/src/keyboard_reader/msg/Key.msg" NAME_WE)
add_dependencies(keyboard_reader_generate_messages_py _keyboard_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(keyboard_reader_genpy)
add_dependencies(keyboard_reader_genpy keyboard_reader_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS keyboard_reader_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_reader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/keyboard_reader
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(keyboard_reader_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_reader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/keyboard_reader
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(keyboard_reader_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_reader)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_reader\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/keyboard_reader
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(keyboard_reader_generate_messages_py std_msgs_generate_messages_py)
