; Auto-generated. Do not edit!


(cl:in-package tm_msgs-msg)


;//! \htmlinclude StaResponse.msg.html

(cl:defclass <StaResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (subcmd
    :reader subcmd
    :initarg :subcmd
    :type cl:string
    :initform "")
   (subdata
    :reader subdata
    :initarg :subdata
    :type cl:string
    :initform ""))
)

(cl:defclass StaResponse (<StaResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-msg:<StaResponse> is deprecated: use tm_msgs-msg:StaResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StaResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:header-val is deprecated.  Use tm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'subcmd-val :lambda-list '(m))
(cl:defmethod subcmd-val ((m <StaResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:subcmd-val is deprecated.  Use tm_msgs-msg:subcmd instead.")
  (subcmd m))

(cl:ensure-generic-function 'subdata-val :lambda-list '(m))
(cl:defmethod subdata-val ((m <StaResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:subdata-val is deprecated.  Use tm_msgs-msg:subdata instead.")
  (subdata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaResponse>) ostream)
  "Serializes a message object of type '<StaResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subcmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subcmd))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subdata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subdata))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaResponse>) istream)
  "Deserializes a message object of type '<StaResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subcmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subcmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subdata) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subdata) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaResponse>)))
  "Returns string type for a message object of type '<StaResponse>"
  "tm_msgs/StaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaResponse)))
  "Returns string type for a message object of type 'StaResponse"
  "tm_msgs/StaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaResponse>)))
  "Returns md5sum for a message object of type '<StaResponse>"
  "3a5171002fa543efe0e7302c1efd2051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaResponse)))
  "Returns md5sum for a message object of type 'StaResponse"
  "3a5171002fa543efe0e7302c1efd2051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaResponse>)))
  "Returns full string definition for message of type '<StaResponse>"
  (cl:format cl:nil "# For SetEvent TAG / AskSta service~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5~%~%Header header~%~%string subcmd~%string subdata~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaResponse)))
  "Returns full string definition for message of type 'StaResponse"
  (cl:format cl:nil "# For SetEvent TAG / AskSta service~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5~%~%Header header~%~%string subcmd~%string subdata~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'subcmd))
     4 (cl:length (cl:slot-value msg 'subdata))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'StaResponse
    (cl:cons ':header (header msg))
    (cl:cons ':subcmd (subcmd msg))
    (cl:cons ':subdata (subdata msg))
))
