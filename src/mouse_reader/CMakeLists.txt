cmake_minimum_required(VERSION 2.8.3)
project(mouse_reader)

set(CMAKE_CXX_FLAGS "-std=c++11")

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)


 add_message_files(
   FILES
   MyEvent.msg
 )


 generate_messages(
   DEPENDENCIES
   std_msgs
 )


catkin_package()

include_directories(include)

add_executable(mouse_reader src/mouse_reader.cpp)
add_dependencies(mouse_reader mouse_reader_generate_messages_cpp)
target_link_libraries(mouse_reader ${catkin_LIBRARIES})
