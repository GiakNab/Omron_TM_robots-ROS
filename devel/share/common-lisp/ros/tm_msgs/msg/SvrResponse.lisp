; Auto-generated. Do not edit!


(cl:in-package tm_msgs-msg)


;//! \htmlinclude SvrResponse.msg.html

(cl:defclass <SvrResponse> (roslisp-msg-protocol:ros-message)
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
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform "")
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SvrResponse (<SvrResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SvrResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SvrResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-msg:<SvrResponse> is deprecated: use tm_msgs-msg:SvrResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SvrResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:header-val is deprecated.  Use tm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SvrResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:id-val is deprecated.  Use tm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SvrResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:mode-val is deprecated.  Use tm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <SvrResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:content-val is deprecated.  Use tm_msgs-msg:content instead.")
  (content m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SvrResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:error_code-val is deprecated.  Use tm_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SvrResponse>) ostream)
  "Serializes a message object of type '<SvrResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SvrResponse>) istream)
  "Deserializes a message object of type '<SvrResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SvrResponse>)))
  "Returns string type for a message object of type '<SvrResponse>"
  "tm_msgs/SvrResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SvrResponse)))
  "Returns string type for a message object of type 'SvrResponse"
  "tm_msgs/SvrResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SvrResponse>)))
  "Returns md5sum for a message object of type '<SvrResponse>"
  "26fc8fa918b76675f2a40eb53a72721d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SvrResponse)))
  "Returns md5sum for a message object of type 'SvrResponse"
  "26fc8fa918b76675f2a40eb53a72721d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SvrResponse>)))
  "Returns full string definition for message of type '<SvrResponse>"
  (cl:format cl:nil "# For WriteItem / AskItem service~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 9.6~%~%Header header~%~%string id~%int8 mode~%string content~%int8 error_code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SvrResponse)))
  "Returns full string definition for message of type 'SvrResponse"
  (cl:format cl:nil "# For WriteItem / AskItem service~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 9.6~%~%Header header~%~%string id~%int8 mode~%string content~%int8 error_code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SvrResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'id))
     1
     4 (cl:length (cl:slot-value msg 'content))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SvrResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'SvrResponse
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':content (content msg))
    (cl:cons ':error_code (error_code msg))
))
