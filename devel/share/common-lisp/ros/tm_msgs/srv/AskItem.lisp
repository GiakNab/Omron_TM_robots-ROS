; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude AskItem-request.msg.html

(cl:defclass <AskItem-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (item
    :reader item
    :initarg :item
    :type cl:string
    :initform "")
   (wait_time
    :reader wait_time
    :initarg :wait_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass AskItem-request (<AskItem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AskItem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AskItem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<AskItem-request> is deprecated: use tm_msgs-srv:AskItem-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AskItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:id-val is deprecated.  Use tm_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'item-val :lambda-list '(m))
(cl:defmethod item-val ((m <AskItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:item-val is deprecated.  Use tm_msgs-srv:item instead.")
  (item m))

(cl:ensure-generic-function 'wait_time-val :lambda-list '(m))
(cl:defmethod wait_time-val ((m <AskItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:wait_time-val is deprecated.  Use tm_msgs-srv:wait_time instead.")
  (wait_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AskItem-request>) ostream)
  "Serializes a message object of type '<AskItem-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'item))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'item))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wait_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AskItem-request>) istream)
  "Deserializes a message object of type '<AskItem-request>"
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
      (cl:setf (cl:slot-value msg 'item) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'item) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wait_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AskItem-request>)))
  "Returns string type for a service object of type '<AskItem-request>"
  "tm_msgs/AskItemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AskItem-request)))
  "Returns string type for a service object of type 'AskItem-request"
  "tm_msgs/AskItemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AskItem-request>)))
  "Returns md5sum for a message object of type '<AskItem-request>"
  "b3422b8e3441a8072a0236251e9f0ee1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AskItem-request)))
  "Returns md5sum for a message object of type 'AskItem-request"
  "b3422b8e3441a8072a0236251e9f0ee1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AskItem-request>)))
  "Returns full string definition for message of type '<AskItem-request>"
  (cl:format cl:nil "# Ask: request 'Read'~%# id        : The discribtion you want to name. ~%# item      : More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT~%# wait_time : set wait time.~%# More details please refer to the TM_Robot_Expression.pdf(version 1.76_6300) Chapter 7.4 TMSCT~%~%string id~%string item~%~%float64 wait_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AskItem-request)))
  "Returns full string definition for message of type 'AskItem-request"
  (cl:format cl:nil "# Ask: request 'Read'~%# id        : The discribtion you want to name. ~%# item      : More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT~%# wait_time : set wait time.~%# More details please refer to the TM_Robot_Expression.pdf(version 1.76_6300) Chapter 7.4 TMSCT~%~%string id~%string item~%~%float64 wait_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AskItem-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'item))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AskItem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AskItem-request
    (cl:cons ':id (id msg))
    (cl:cons ':item (item msg))
    (cl:cons ':wait_time (wait_time msg))
))
;//! \htmlinclude AskItem-response.msg.html

(cl:defclass <AskItem-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass AskItem-response (<AskItem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AskItem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AskItem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<AskItem-response> is deprecated: use tm_msgs-srv:AskItem-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <AskItem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AskItem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:id-val is deprecated.  Use tm_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AskItem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:value-val is deprecated.  Use tm_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AskItem-response>) ostream)
  "Serializes a message object of type '<AskItem-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AskItem-response>) istream)
  "Deserializes a message object of type '<AskItem-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
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
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AskItem-response>)))
  "Returns string type for a service object of type '<AskItem-response>"
  "tm_msgs/AskItemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AskItem-response)))
  "Returns string type for a service object of type 'AskItem-response"
  "tm_msgs/AskItemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AskItem-response>)))
  "Returns md5sum for a message object of type '<AskItem-response>"
  "b3422b8e3441a8072a0236251e9f0ee1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AskItem-response)))
  "Returns md5sum for a message object of type 'AskItem-response"
  "b3422b8e3441a8072a0236251e9f0ee1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AskItem-response>)))
  "Returns full string definition for message of type '<AskItem-response>"
  (cl:format cl:nil "# ok        : read status ~%bool ok~%~%# id        : The discribtion you want to name.~%# value     : The value of asked item.~%string id~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AskItem-response)))
  "Returns full string definition for message of type 'AskItem-response"
  (cl:format cl:nil "# ok        : read status ~%bool ok~%~%# id        : The discribtion you want to name.~%# value     : The value of asked item.~%string id~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AskItem-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AskItem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AskItem-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':id (id msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AskItem)))
  'AskItem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AskItem)))
  'AskItem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AskItem)))
  "Returns string type for a service object of type '<AskItem>"
  "tm_msgs/AskItem")