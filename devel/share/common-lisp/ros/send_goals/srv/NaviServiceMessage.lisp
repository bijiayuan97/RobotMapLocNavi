; Auto-generated. Do not edit!


(cl:in-package send_goals-srv)


;//! \htmlinclude NaviServiceMessage-request.msg.html

(cl:defclass <NaviServiceMessage-request> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass NaviServiceMessage-request (<NaviServiceMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviServiceMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviServiceMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name send_goals-srv:<NaviServiceMessage-request> is deprecated: use send_goals-srv:NaviServiceMessage-request instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <NaviServiceMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader send_goals-srv:label-val is deprecated.  Use send_goals-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviServiceMessage-request>) ostream)
  "Serializes a message object of type '<NaviServiceMessage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviServiceMessage-request>) istream)
  "Deserializes a message object of type '<NaviServiceMessage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviServiceMessage-request>)))
  "Returns string type for a service object of type '<NaviServiceMessage-request>"
  "send_goals/NaviServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviServiceMessage-request)))
  "Returns string type for a service object of type 'NaviServiceMessage-request"
  "send_goals/NaviServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviServiceMessage-request>)))
  "Returns md5sum for a message object of type '<NaviServiceMessage-request>"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviServiceMessage-request)))
  "Returns md5sum for a message object of type 'NaviServiceMessage-request"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviServiceMessage-request>)))
  "Returns full string definition for message of type '<NaviServiceMessage-request>"
  (cl:format cl:nil "# request~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviServiceMessage-request)))
  "Returns full string definition for message of type 'NaviServiceMessage-request"
  (cl:format cl:nil "# request~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviServiceMessage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviServiceMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviServiceMessage-request
    (cl:cons ':label (label msg))
))
;//! \htmlinclude NaviServiceMessage-response.msg.html

(cl:defclass <NaviServiceMessage-response> (roslisp-msg-protocol:ros-message)
  ((navigation_successfull
    :reader navigation_successfull
    :initarg :navigation_successfull
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass NaviServiceMessage-response (<NaviServiceMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviServiceMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviServiceMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name send_goals-srv:<NaviServiceMessage-response> is deprecated: use send_goals-srv:NaviServiceMessage-response instead.")))

(cl:ensure-generic-function 'navigation_successfull-val :lambda-list '(m))
(cl:defmethod navigation_successfull-val ((m <NaviServiceMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader send_goals-srv:navigation_successfull-val is deprecated.  Use send_goals-srv:navigation_successfull instead.")
  (navigation_successfull m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <NaviServiceMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader send_goals-srv:message-val is deprecated.  Use send_goals-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviServiceMessage-response>) ostream)
  "Serializes a message object of type '<NaviServiceMessage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'navigation_successfull) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviServiceMessage-response>) istream)
  "Deserializes a message object of type '<NaviServiceMessage-response>"
    (cl:setf (cl:slot-value msg 'navigation_successfull) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviServiceMessage-response>)))
  "Returns string type for a service object of type '<NaviServiceMessage-response>"
  "send_goals/NaviServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviServiceMessage-response)))
  "Returns string type for a service object of type 'NaviServiceMessage-response"
  "send_goals/NaviServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviServiceMessage-response>)))
  "Returns md5sum for a message object of type '<NaviServiceMessage-response>"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviServiceMessage-response)))
  "Returns md5sum for a message object of type 'NaviServiceMessage-response"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviServiceMessage-response>)))
  "Returns full string definition for message of type '<NaviServiceMessage-response>"
  (cl:format cl:nil "#response~%bool navigation_successfull~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviServiceMessage-response)))
  "Returns full string definition for message of type 'NaviServiceMessage-response"
  (cl:format cl:nil "#response~%bool navigation_successfull~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviServiceMessage-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviServiceMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviServiceMessage-response
    (cl:cons ':navigation_successfull (navigation_successfull msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NaviServiceMessage)))
  'NaviServiceMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NaviServiceMessage)))
  'NaviServiceMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviServiceMessage)))
  "Returns string type for a service object of type '<NaviServiceMessage>"
  "send_goals/NaviServiceMessage")