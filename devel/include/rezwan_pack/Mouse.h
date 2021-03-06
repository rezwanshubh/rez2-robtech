// Generated by gencpp from file rezwan_pack/Mouse.msg
// DO NOT EDIT!


#ifndef REZWAN_PACK_MESSAGE_MOUSE_H
#define REZWAN_PACK_MESSAGE_MOUSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rezwan_pack
{
template <class ContainerAllocator>
struct Mouse_
{
  typedef Mouse_<ContainerAllocator> Type;

  Mouse_()
    : direction_x(0)
    , direction_y(0)
    , wheel_rotation(0)
    , btn_right(false)
    , btn_left(false)
    , btn_middle(false)  {
    }
  Mouse_(const ContainerAllocator& _alloc)
    : direction_x(0)
    , direction_y(0)
    , wheel_rotation(0)
    , btn_right(false)
    , btn_left(false)
    , btn_middle(false)  {
  (void)_alloc;
    }



   typedef int64_t _direction_x_type;
  _direction_x_type direction_x;

   typedef int64_t _direction_y_type;
  _direction_y_type direction_y;

   typedef int64_t _wheel_rotation_type;
  _wheel_rotation_type wheel_rotation;

   typedef uint8_t _btn_right_type;
  _btn_right_type btn_right;

   typedef uint8_t _btn_left_type;
  _btn_left_type btn_left;

   typedef uint8_t _btn_middle_type;
  _btn_middle_type btn_middle;




  typedef boost::shared_ptr< ::rezwan_pack::Mouse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rezwan_pack::Mouse_<ContainerAllocator> const> ConstPtr;

}; // struct Mouse_

typedef ::rezwan_pack::Mouse_<std::allocator<void> > Mouse;

typedef boost::shared_ptr< ::rezwan_pack::Mouse > MousePtr;
typedef boost::shared_ptr< ::rezwan_pack::Mouse const> MouseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rezwan_pack::Mouse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rezwan_pack::Mouse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rezwan_pack

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'rezwan_pack': ['/home/rostest/rez2-robtech/src/rezwan_pack/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rezwan_pack::Mouse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rezwan_pack::Mouse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rezwan_pack::Mouse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rezwan_pack::Mouse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rezwan_pack::Mouse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rezwan_pack::Mouse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rezwan_pack::Mouse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd373f94bff457170b2317d79cd8865a";
  }

  static const char* value(const ::rezwan_pack::Mouse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd373f94bff45717ULL;
  static const uint64_t static_value2 = 0x0b2317d79cd8865aULL;
};

template<class ContainerAllocator>
struct DataType< ::rezwan_pack::Mouse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rezwan_pack/Mouse";
  }

  static const char* value(const ::rezwan_pack::Mouse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rezwan_pack::Mouse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 direction_x\n\
int64 direction_y\n\
int64 wheel_rotation\n\
\n\
bool btn_right\n\
bool btn_left\n\
bool btn_middle\n\
";
  }

  static const char* value(const ::rezwan_pack::Mouse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rezwan_pack::Mouse_<ContainerAllocator> >
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
  }; // struct Mouse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rezwan_pack::Mouse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rezwan_pack::Mouse_<ContainerAllocator>& v)
  {
    s << indent << "direction_x: ";
    Printer<int64_t>::stream(s, indent + "  ", v.direction_x);
    s << indent << "direction_y: ";
    Printer<int64_t>::stream(s, indent + "  ", v.direction_y);
    s << indent << "wheel_rotation: ";
    Printer<int64_t>::stream(s, indent + "  ", v.wheel_rotation);
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

#endif // REZWAN_PACK_MESSAGE_MOUSE_H
