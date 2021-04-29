// Generated by gencpp from file send_goals/NaviServiceMessageResponse.msg
// DO NOT EDIT!


#ifndef SEND_GOALS_MESSAGE_NAVISERVICEMESSAGERESPONSE_H
#define SEND_GOALS_MESSAGE_NAVISERVICEMESSAGERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace send_goals
{
template <class ContainerAllocator>
struct NaviServiceMessageResponse_
{
  typedef NaviServiceMessageResponse_<ContainerAllocator> Type;

  NaviServiceMessageResponse_()
    : navigation_successfull(false)
    , message()  {
    }
  NaviServiceMessageResponse_(const ContainerAllocator& _alloc)
    : navigation_successfull(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _navigation_successfull_type;
  _navigation_successfull_type navigation_successfull;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> const> ConstPtr;

}; // struct NaviServiceMessageResponse_

typedef ::send_goals::NaviServiceMessageResponse_<std::allocator<void> > NaviServiceMessageResponse;

typedef boost::shared_ptr< ::send_goals::NaviServiceMessageResponse > NaviServiceMessageResponsePtr;
typedef boost::shared_ptr< ::send_goals::NaviServiceMessageResponse const> NaviServiceMessageResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator1> & lhs, const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator2> & rhs)
{
  return lhs.navigation_successfull == rhs.navigation_successfull &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator1> & lhs, const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace send_goals

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3a2f7c01cc0d2cc53c9f7ea9a224866";
  }

  static const char* value(const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3a2f7c01cc0d2ccULL;
  static const uint64_t static_value2 = 0x53c9f7ea9a224866ULL;
};

template<class ContainerAllocator>
struct DataType< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "send_goals/NaviServiceMessageResponse";
  }

  static const char* value(const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#response\n"
"bool navigation_successfull\n"
"string message\n"
;
  }

  static const char* value(const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.navigation_successfull);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NaviServiceMessageResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::send_goals::NaviServiceMessageResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::send_goals::NaviServiceMessageResponse_<ContainerAllocator>& v)
  {
    s << indent << "navigation_successfull: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.navigation_successfull);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEND_GOALS_MESSAGE_NAVISERVICEMESSAGERESPONSE_H