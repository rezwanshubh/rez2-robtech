cmake_minimum_required(VERSION 2.8.3)
project(rezwan_pack)

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

add_executable(rezwan_pack src/rezwan_pack.cpp)
add_dependencies(rezwan_pack rezwan_pack_generate_messages_cpp)
target_link_libraries(rezwan_pack ${catkin_LIBRARIES})
