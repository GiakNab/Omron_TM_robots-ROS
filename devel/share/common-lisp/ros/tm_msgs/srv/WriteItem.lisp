; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude WriteItem-request.msg.html

(cl:defclass <WriteItem-request> (roslisp-msg-protocol:ros-message)
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
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass WriteItem-request (<WriteItem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteItem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteItem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<WriteItem-request> is deprecated: use tm_msgs-srv:WriteItem-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WriteItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:id-val is deprecated.  Use tm_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'item-val :lambda-list '(m))
(cl:defmethod item-val ((m <WriteItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:item-val is deprecated.  Use tm_msgs-srv:item instead.")
  (item m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WriteItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:value-val is deprecated.  Use tm_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteItem-request>) ostream)
  "Serializes a message object of type '<WriteItem-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteItem-request>) istream)
  "Deserializes a message object of type '<WriteItem-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteItem-request>)))
  "Returns string type for a service object of type '<WriteItem-request>"
  "tm_msgs/WriteItemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteItem-request)))
  "Returns string type for a service object of type 'WriteItem-request"
  "tm_msgs/WriteItemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteItem-request>)))
  "Returns md5sum for a message object of type '<WriteItem-request>"
  "200255964745879fc25ca887f157e1b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteItem-request)))
  "Returns md5sum for a message object of type 'WriteItem-request"
  "200255964745879fc25ca887f157e1b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteItem-request>)))
  "Returns full string definition for message of type '<WriteItem-request>"
  (cl:format cl:nil "# 'Write'~%# id        : name~%# item/value: More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 9.3 svr_write~%~%string id~%string item~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteItem-request)))
  "Returns full string definition for message of type 'WriteItem-request"
  (cl:format cl:nil "# 'Write'~%# id        : name~%# item/value: More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 9.3 svr_write~%~%string id~%string item~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteItem-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'item))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteItem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteItem-request
    (cl:cons ':id (id msg))
    (cl:cons ':item (item msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude WriteItem-response.msg.html

(cl:defclass <WriteItem-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WriteItem-response (<WriteItem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteItem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteItem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<WriteItem-response> is deprecated: use tm_msgs-srv:WriteItem-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <WriteItem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteItem-response>) ostream)
  "Serializes a message object of type '<WriteItem-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteItem-response>) istream)
  "Deserializes a message object of type '<WriteItem-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteItem-response>)))
  "Returns string type for a service object of type '<WriteItem-response>"
  "tm_msgs/WriteItemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteItem-response)))
  "Returns string type for a service object of type 'WriteItem-response"
  "tm_msgs/WriteItemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteItem-response>)))
  "Returns md5sum for a message object of type '<WriteItem-response>"
  "200255964745879fc25ca887f157e1b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteItem-response)))
  "Returns md5sum for a message object of type 'WriteItem-response"
  "200255964745879fc25ca887f157e1b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteItem-response>)))
  "Returns full string definition for message of type '<WriteItem-response>"
  (cl:format cl:nil "#ok =   write status~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteItem-response)))
  "Returns full string definition for message of type 'WriteItem-response"
  (cl:format cl:nil "#ok =   write status~%bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteItem-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteItem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteItem-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteItem)))
  'WriteItem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteItem)))
  'WriteItem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteItem)))
  "Returns string type for a service object of type '<WriteItem>"
  "tm_msgs/WriteItem")