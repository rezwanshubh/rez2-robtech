#include <linux/input.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <glob.h>	// for counting files in a dir (needed for counting event files in /dev/input)
#include <sstream>
#include "ros/ros.h"
#include "mouse_reader/MyEvent.h"

#ifndef MOUSE_READER_H
#define MOUSE_READER_H

class Mouse {
public:
	// Constructor
	Mouse(std::string Mouse_event_path) {
		if (Mouse_event_path.empty()) {
			// Tries to find a suitable event file from the files available on the system
			descriptor_ = findMouse();
		} else {
			// Tries to open user-specified event file as Mouse device
			descriptor_ = openMouse(Mouse_event_path.c_str());
		}
	}
	;

	int findMouse();

	int openMouse(const char *device_path);

	/** Closes the device specificed by descriptor_. */
	void closeMouse();

	bool isReadable();

	void processEvent(struct input_event *ev, ros::Publisher& ros_publisher);

	void spinMouse(ros::Publisher& ros_publisher);

private:
	/** File descriptor of the working Griffin Mouse event file. */
	int descriptor_;

	/** Integrated value of rotation of Mouse turn knob. */
	long long integral_ = 0;

	/** TRUE when Mouse push button is pressed. */
	bool pressed_ = 0;

	/** A list of substrings that would indicate that a device is Griffin Mouse USB device. */
	std::vector<std::string> valid_substrings_ = { "MOUSE", "mouse", "Mouse" };

};
// end class Mouse

#endif
