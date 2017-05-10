#include "rezwan_pack/rezwan_pack.h"

int Mouse::openMouse(const char *device_path) {
	printf("Opening device: %s \n", device_path);


	int fd = open(device_path, O_RDONLY);
	if (fd < 0) {
		ROS_ERROR("Failed to open \"%s\"\n", device_path);
		return -1;
	}

	char name[255];

	if (ioctl(fd, EVIOCGNAME(sizeof(name)), name) < 0) {
		ROS_ERROR("\"%s\": EVIOCGNAME failed.", device_path);
		close(fd);
		return -1;
	}

	std::ostringstream sstream;
	sstream << name;
	std::string name_as_string = sstream.str();
	int i;
	for (i = 0; i < valid_substrings_.size(); i++) {

		std::size_t found = name_as_string.find(valid_substrings_[i]);
		if (found != std::string::npos) {

			ROS_INFO(
					"Found \x1b[1;34m'%s'\x1b[0m device. Starting to read ...\n",
					name);
			return fd;
		}
	}

	close(fd);
	return -1;
}

int Mouse::findMouse() {

	glob_t gl;

	int num_event_dev = 0;

	if (glob("/dev/input/event*", GLOB_NOSORT, NULL, &gl) == 0) {

		num_event_dev = gl.gl_pathc;
	}

	int i, r;

	for (i = 0; i < num_event_dev; i++) {

		r = openMouse(gl.gl_pathv[i]);

		if (r >= 0)
			return r;
	}


	globfree(&gl);


	return -1;
}


void Mouse::closeMouse() {
	printf("Closing Mouse device.\n");
	close(descriptor_);
	return;
}

bool Mouse::isReadable() {
	if (descriptor_ < 0)
		return false;
	return true;
}

void Mouse::processEvent(struct input_event *ev,
		ros::Publisher& ros_publisher) {

	rezwan_pack::MyEvent ros_message;

	switch (ev->type) {
	case EV_SYN:

		break;
	case EV_MSC:
		break;
	case EV_REL:
		switch (ev->code) {
		case 0: // no need to do anything
			printf("mouse was rotated %d units to X axis\n", (int) ev->value);
			ros_message.direction_x = (int) ev->value;
			break;
		case 1: // no need to do anything
			printf("Mouse was rotated %d units to Y axis\n", (int) ev->value);
			ros_message.direction_y = (int) ev->value;
			break;
		case 8: // no need to do anything
			printf("WHEEL was rotated %d units\n", (int) ev->value);
			ros_message.wheel_rotation = (int) ev->value;
			break;
		}

		ros_publisher.publish(ros_message);
		break;
	case EV_KEY:
		switch (ev->code) { // Upon receiving data about pressing and depressing the dial button
		case 272:
			printf("Left button was %s\n", ev->value ? "pressed" : "released");
			ros_message.btn_left = ev->value;
			break;
		case 273:
			printf("Right button was %s\n", ev->value ? "pressed" : "released");
			ros_message.btn_right = ev->value;
			break;
		case 274:
			printf("BTN_MIDDLE was %s\n", ev->value ? "pressed" : "released");
			ros_message.btn_middle = ev->value;
			break;
		}
		ros_publisher.publish(ros_message);

		break;

	default: // default case
		ROS_WARN("Unexpected event type; ev->type = 0x%04x\n", ev->type);
	} // end switch

	fflush (stdout);
}

void Mouse::spinMouse(ros::Publisher& ros_publisher) {
	int const BUFFER_SIZE = 32;

	struct input_event ibuffer[BUFFER_SIZE];
	int r, events, i;

	while (ros::ok()) {
		// TODO: Figure out a way for ROS to exit cleanly.
		r = read(descriptor_, ibuffer,
				sizeof(struct input_event) * BUFFER_SIZE);
		if (r > 0) {

			events = r / sizeof(struct input_event);

			for (i = 0; i < events; i++) {

				processEvent(&ibuffer[i], ros_publisher);

				ros::spinOnce();
			} // end for
		} // end if
		else {

			ROS_WARN("read() failed.\n");
			return;
		} // end else

	}

	return;
}


int main(int argc, char *argv[]) {

	ros::init(argc, argv, "rezwan_pack");
	ros::NodeHandle pnh("~");
	std::string Mouse_path;
	pnh.param < std::string > ("path", Mouse_path, "");

	Mouse Mouse(Mouse_path);

	if (!Mouse.isReadable()) {
		ROS_ERROR("Unable to locate any Mouse device.");
		ROS_INFO(
				"You may try specifying path as ROS parameter, e.g., rosrun mouse_reader mouse_reader _path:=<device_event_path>");
		return -1;
	}

	ros::Publisher pub_My_events = pnh.advertise<rezwan_pack::MyEvent>("rezwan_mouse", 100);
	Mouse.spinMouse(pub_My_events);

	Mouse.closeMouse();

	return 0;
}
