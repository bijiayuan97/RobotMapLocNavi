// Generated by gencpp from file send_goals/NaviServiceMessageRequest.msg
// DO NOT EDIT!


#ifndef SEND_GOALS_MESSAGE_NAVISERVICEMESSAGEREQUEST_H
#define SEND_GOALS_MESSAGE_NAVISERVICEMESSAGEREQUEST_H


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
struct NaviServiceMessageRequest_
{
  typedef NaviServiceMessageRequest_<ContainerAllocator> Type;

  NaviServiceMessageRequest_()
    : label()  {
    }
  NaviServiceMessageRequest_(const ContainerAllocator& _alloc)
    : label(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _label_type;
  _label_type label;





  typedef boost::shared_ptr< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> const> ConstPtr;

}; // struct NaviServiceMessageRequest_

typedef ::send_goals::NaviServiceMessageRequest_<std::allocator<void> > NaviServiceMessageRequest;

typedef boost::shared_ptr< ::send_goals::NaviServiceMessageRequest > NaviServiceMessageRequestPtr;
typedef boost::shared_ptr< ::send_goals::NaviServiceMessageRequest const> NaviServiceMessageRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator1> & lhs, const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator2> & rhs)
{
  return lhs.label == rhs.label;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator1> & lhs, const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace send_goals

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ea23f97416b04c6151d2b576c0665ac1";
  }

  static const char* value(const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xea23f97416b04c61ULL;
  static const uint64_t static_value2 = 0x51d2b576c0665ac1ULL;
};

template<class ContainerAllocator>
struct DataType< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "send_goals/NaviServiceMessageRequest";
  }

  static const char* value(const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# request\n"
"string label\n"
;
  }

  static const char* value(const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.label);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NaviServiceMessageRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::send_goals::NaviServiceMessageRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::send_goals::NaviServiceMessageRequest_<ContainerAllocator>& v)
  {
    s << indent << "label: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.label);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEND_GOALS_MESSAGE_NAVISERVICEMESSAGEREQUEST_H
