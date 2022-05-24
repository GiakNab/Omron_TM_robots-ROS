; Auto-generated. Do not edit!


(cl:in-package tm_msgs-msg)


;//! \htmlinclude SctResponse.msg.html

(cl:defclass <SctResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (script
    :reader script
    :initarg :script
    :type cl:string
    :initform ""))
)

(cl:defclass SctResponse (<SctResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SctResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SctResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-msg:<SctResponse> is deprecated: use tm_msgs-msg:SctResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SctResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:header-val is deprecated.  Use tm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SctResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:id-val is deprecated.  Use tm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'script-val :lambda-list '(m))
(cl:defmethod script-val ((m <SctResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:script-val is deprecated.  Use tm_msgs-msg:script instead.")
  (script m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SctResponse>) ostream)
  "Serializes a message object of type '<SctResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'script))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'script))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SctResponse>) istream)
  "Deserializes a message object of type '<SctResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'script) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'script) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SctResponse>)))
  "Returns string type for a message object of type '<SctResponse>"
  "tm_msgs/SctResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SctResponse)))
  "Returns string type for a message object of type 'SctResponse"
  "tm_msgs/SctResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SctResponse>)))
  "Returns md5sum for a message object of type '<SctResponse>"
  "36fc752cb7af4e35e40e062d5409444d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SctResponse)))
  "Returns md5sum for a message object of type 'SctResponse"
  "36fc752cb7af4e35e40e062d5409444d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SctResponse>)))
  "Returns full string definition for message of type '<SctResponse>"
  (cl:format cl:nil "# For SendScript / SetXXX service~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4~%~%Header header~%~%string id~%string script~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SctResponse)))
  "Returns full string definition for message of type 'SctResponse"
  (cl:format cl:nil "# For SendScript / SetXXX service~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4~%~%Header header~%~%string id~%string script~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SctResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'script))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SctResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'SctResponse
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':script (script msg))
))
