#include "mouse_reader/mouse_reader.h"

int Mouse::openMouse(const char *device_path) {
	printf("Opening device: %s \n", device_path);

	// Open device at device_path for READONLY and get file descriptor
	int fd = open(device_path, O_RDONLY);

	// If failed to open device at device_path
	if (fd < 0) {
		ROS_ERROR("Failed to open \"%s\"\n", device_path);
		return -1;
	}

	// Meaningful, i.e., EVIOCGNAME name
	char name[255];
	// Fetch the meaningful (i.e., EVIOCGNAME) name
	if (ioctl(fd, EVIOCGNAME(sizeof(name)), name) < 0) {
		ROS_ERROR("\"%s\": EVIOCGNAME failed.", device_path);
		close(fd);
		// Returns -1 if failed to fetch the meaningful name
		return -1;
	}

	// Let's check if the meaningful name matches one listed in valid_substrings_
	std::ostringstream sstream;
	// Convert name given as char* to stringstream
	sstream << name;
	// stringstream to string
	std::string name_as_string = sstream.str();
	int i;
	for (i = 0; i < valid_substrings_.size(); i++) {
		// Does the meaningful name contain a predefined valid substring?
		std::size_t found = name_as_string.find(valid_substrings_[i]);
		if (found != std::string::npos) {
			// if everything checks out, print on screen and return the file descriptor
			ROS_INFO(
					"Found \x1b[1;34m'%s'\x1b[0m device. Starting to read ...\n",
					name);
			return fd;
		} // end if
	} // end for

	close(fd);
	return -1;
} // end openMouse

/** Goes through all the event files in /dev/input/ to locate Griffin Mouse USB.
 *  @return file descriptor if all checks out, otherwise -1.
 */
int Mouse::findMouse() {
	// Using glob() [see: http://linux.die.net/man/3/glob ] for getting event files in /dev/input/
	glob_t gl;
	// Number of event files found in /dev/input/
	int num_event_dev = 0;
	// Counts for filenames that match the given pattern
	if (glob("/dev/input/event*", GLOB_NOSORT, NULL, &gl) == 0) {
		// Get number of event files
		num_event_dev = gl.gl_pathc;
	}

	int i, r;
	// Goes through all the found event files
	for (i = 0; i < num_event_dev; i++) {
		// Tries to open an event file as a Mouse device
		r = openMouse(gl.gl_pathv[i]);
		// If opened file is Mouse event, return file descriptor
		if (r >= 0)
			return r;
	} // for

	// free memory allocated for globe struct
	globfree(&gl);

	// return error -1 because no Mouse device was found
	return -1;
} // end findMouse

/** Closes the device specificed by descriptor_. */
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

	mouse_reader::MyEvent ros_message;

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
			// Calculate the number of events
			events = r / sizeof(struct input_event);
			// Go through each read events
			for (i = 0; i < events; i++) {
				// Process event and publish data
				processEvent(&ibuffer[i], ros_publisher);
				// spin
				ros::spinOnce();
			} // end for
		} // end if
		else {
			// Let user know if read() has failed
			ROS_WARN("read() failed.\n");
			return;
		} // end else

	} // end while

	return;
} // end spinMouse

/** Main method. */
int main(int argc, char *argv[]) {
	// ROS init
	ros::init(argc, argv, "mouse_reader");

	// Private nodehandle for ROS
	ros::NodeHandle pnh("~");

	// Getting user-specified path from ROS parameter server
	std::string Mouse_path;
	pnh.param < std::string > ("path", Mouse_path, "");

	// Let's construct Mouse object
	Mouse Mouse(Mouse_path);

	// If failed to open any Mouse USB device, print info and exit
	if (!Mouse.isReadable()) {
		ROS_ERROR("Unable to locate any Mouse device.");
		ROS_INFO(
				"You may try specifying path as ROS parameter, e.g., rosrun mouse_reader mouse_reader _path:=<device_event_path>");
		return -1;
	}

	// Creates publisher that advertises griffin_Mouse::MouseEvent messages on topic /griffin_Mouse/events
	ros::Publisher pub_My_events = pnh.advertise < mouse_reader::MyEvent
			> ("events", 100);

	// After Mouse is succesfully opened, read its input, publish ROS messages, and spin.
	Mouse.spinMouse(pub_My_events);

	// Close Mouse
	Mouse.closeMouse();

	return 0;
} //end main
