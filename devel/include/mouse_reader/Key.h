// Generated by gencpp from file mouse_reader/Key.msg
// DO NOT EDIT!


#ifndef MOUSE_READER_MESSAGE_KEY_H
#define MOUSE_READER_MESSAGE_KEY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mouse_reader
{
template <class ContainerAllocator>
struct Key_
{
  typedef Key_<ContainerAllocator> Type;

  Key_()
    : direction_x(0)
    , direction_y(0)
    , wheel_rotation(0)
    , btn_right(false)
    , btn_left(false)
    , btn_middle(false)  {
    }
  Key_(const ContainerAllocator& _alloc)
    : direction_x(0)
    , direction_y(0)
    , wheel_rotation(0)
    , btn_right(false)
    , btn_left(false)
    , btn_middle(false)  {
  (void)_alloc;
    }



   typedef int8_t _direction_x_type;
  _direction_x_type direction_x;

   typedef int8_t _direction_y_type;
  _direction_y_type direction_y;

   typedef int8_t _wheel_rotation_type;
  _wheel_rotation_type wheel_rotation;

   typedef uint8_t _btn_right_type;
  _btn_right_type btn_right;

   typedef uint8_t _btn_left_type;
  _btn_left_type btn_left;

   typedef uint8_t _btn_middle_type;
  _btn_middle_type btn_middle;




  typedef boost::shared_ptr< ::mouse_reader::Key_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mouse_reader::Key_<ContainerAllocator> const> ConstPtr;

}; // struct Key_

typedef ::mouse_reader::Key_<std::allocator<void> > Key;

typedef boost::shared_ptr< ::mouse_reader::Key > KeyPtr;
typedef boost::shared_ptr< ::mouse_reader::Key const> KeyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mouse_reader::Key_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mouse_reader::Key_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mouse_reader

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'mouse_reader': ['/home/rostest/rez2-robtech/src/mouse_reader/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mouse_reader::Key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mouse_reader::Key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mouse_reader::Key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mouse_reader::Key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mouse_reader::Key_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mouse_reader::Key_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mouse_reader::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a533572c34f024512abad75ea2a34b4";
  }

  static const char* value(const ::mouse_reader::Key_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a533572c34f0245ULL;
  static const uint64_t static_value2 = 0x12abad75ea2a34b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::mouse_reader::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mouse_reader/Key";
  }

  static const char* value(const ::mouse_reader::Key_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mouse_reader::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Dirction values can be -1 for counter-clockwise, 0 for no, and 1 clockwise rotation\n\
int8 direction_x\n\
int8 direction_y\n\
int8 wheel_rotation\n\
\n\
# Sum of direction values since the launch of the node\n\
#int64 integral\n\
\n\
# TRUE while button is pressed, FALSE otherwise\n\
bool btn_right\n\
bool btn_left\n\
bool btn_middle\n\
\n\
# TRUE if the event was triggered by a push or a release of the button; FALSE otherwise\n\
#bool push_state_changed\n\
";
  }

  static const char* value(const ::mouse_reader::Key_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mouse_reader::Key_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction_x);
      stream.next(m.direction_y);
      stream.next(m.wheel_rotation);
      stream.next(m.btn_right);
      stream.next(m.btn_left);
      stream.next(m.btn_middle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Key_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mouse_reader::Key_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mouse_reader::Key_<ContainerAllocator>& v)
  {
    s << indent << "direction_x: ";
    Printer<int8_t>::stream(s, indent + "  ", v.direction_x);
    s << indent << "direction_y: ";
    Printer<int8_t>::stream(s, indent + "  ", v.direction_y);
    s << indent << "wheel_rotation: ";
    Printer<int8_t>::stream(s, indent + "  ", v.wheel_rotation);
    s << indent << "btn_right: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.btn_right);
    s << indent << "btn_left: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.btn_left);
    s << indent << "btn_middle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.btn_middle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOUSE_READER_MESSAGE_KEY_H
