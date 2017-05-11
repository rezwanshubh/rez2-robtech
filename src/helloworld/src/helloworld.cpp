#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv) {
	ros::init(argc, argv, "helloworld");

	ros::NodeHandle n;
	ros::Publisher chatter_pub = n.advertise < std_msgs::String
			> ("helloworld_topic", 1000);
	ros::Rate loop_rate(10);

	while (ros::ok()) {
		std_msgs::String msg;
		msg.data = "hello world";
		ROS_INFO("%s", msg.data.c_str());
		chatter_pub.publish(msg);
		loop_rate.sleep();
	}

	return 0;
}

