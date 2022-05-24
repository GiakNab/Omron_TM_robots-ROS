; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude AskSta-request.msg.html

(cl:defclass <AskSta-request> (roslisp-msg-protocol:ros-message)
  ((subcmd
    :reader subcmd
    :initarg :subcmd
    :type cl:string
    :initform "")
   (subdata
    :reader subdata
    :initarg :subdata
    :type cl:string
    :initform "")
   (wait_time
    :reader wait_time
    :initarg :wait_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass AskSta-request (<AskSta-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AskSta-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AskSta-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<AskSta-request> is deprecated: use tm_msgs-srv:AskSta-request instead.")))

(cl:ensure-generic-function 'subcmd-val :lambda-list '(m))
(cl:defmethod subcmd-val ((m <AskSta-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:subcmd-val is deprecated.  Use tm_msgs-srv:subcmd instead.")
  (subcmd m))

(cl:ensure-generic-function 'subdata-val :lambda-list '(m))
(cl:defmethod subdata-val ((m <AskSta-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:subdata-val is deprecated.  Use tm_msgs-srv:subdata instead.")
  (subdata m))

(cl:ensure-generic-function 'wait_time-val :lambda-list '(m))
(cl:defmethod wait_time-val ((m <AskSta-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:wait_time-val is deprecated.  Use tm_msgs-srv:wait_time instead.")
  (wait_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AskSta-request>) ostream)
  "Serializes a message object of type '<AskSta-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AskSta-request>) istream)
  "Deserializes a message object of type '<AskSta-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AskSta-request>)))
  "Returns string type for a service object of type '<AskSta-request>"
  "tm_msgs/AskStaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AskSta-request)))
  "Returns string type for a service object of type 'AskSta-request"
  "tm_msgs/AskStaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AskSta-request>)))
  "Returns md5sum for a message object of type '<AskSta-request>"
  "8d2ef2c8296a1b6a1aea258b0876a209")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AskSta-request)))
  "Returns md5sum for a message object of type 'AskSta-request"
  "8d2ef2c8296a1b6a1aea258b0876a209")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AskSta-request>)))
  "Returns full string definition for message of type '<AskSta-request>"
  (cl:format cl:nil "# Ask: request 'Read' sta~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5 TMSTA~%# wait_time : set wait time.~%~%string subcmd~%string subdata~%~%float64 wait_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AskSta-request)))
  "Returns full string definition for message of type 'AskSta-request"
  (cl:format cl:nil "# Ask: request 'Read' sta~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5 TMSTA~%# wait_time : set wait time.~%~%string subcmd~%string subdata~%~%float64 wait_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AskSta-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subcmd))
     4 (cl:length (cl:slot-value msg 'subdata))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AskSta-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AskSta-request
    (cl:cons ':subcmd (subcmd msg))
    (cl:cons ':subdata (subdata msg))
    (cl:cons ':wait_time (wait_time msg))
))
;//! \htmlinclude AskSta-response.msg.html

(cl:defclass <AskSta-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass AskSta-response (<AskSta-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AskSta-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AskSta-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<AskSta-response> is deprecated: use tm_msgs-srv:AskSta-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <AskSta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'subcmd-val :lambda-list '(m))
(cl:defmethod subcmd-val ((m <AskSta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:subcmd-val is deprecated.  Use tm_msgs-srv:subcmd instead.")
  (subcmd m))

(cl:ensure-generic-function 'subdata-val :lambda-list '(m))
(cl:defmethod subdata-val ((m <AskSta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:subdata-val is deprecated.  Use tm_msgs-srv:subdata instead.")
  (subdata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AskSta-response>) ostream)
  "Serializes a message object of type '<AskSta-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AskSta-response>) istream)
  "Deserializes a message object of type '<AskSta-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AskSta-response>)))
  "Returns string type for a service object of type '<AskSta-response>"
  "tm_msgs/AskStaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AskSta-response)))
  "Returns string type for a service object of type 'AskSta-response"
  "tm_msgs/AskStaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AskSta-response>)))
  "Returns md5sum for a message object of type '<AskSta-response>"
  "8d2ef2c8296a1b6a1aea258b0876a209")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AskSta-response)))
  "Returns md5sum for a message object of type 'AskSta-response"
  "8d2ef2c8296a1b6a1aea258b0876a209")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AskSta-response>)))
  "Returns full string definition for message of type '<AskSta-response>"
  (cl:format cl:nil "# ok        : read status ~%bool ok~%~%string subcmd~%string subdata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AskSta-response)))
  "Returns full string definition for message of type 'AskSta-response"
  (cl:format cl:nil "# ok        : read status ~%bool ok~%~%string subcmd~%string subdata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AskSta-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'subcmd))
     4 (cl:length (cl:slot-value msg 'subdata))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AskSta-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AskSta-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':subcmd (subcmd msg))
    (cl:cons ':subdata (subdata msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AskSta)))
  'AskSta-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AskSta)))
  'AskSta-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AskSta)))
  "Returns string type for a service object of type '<AskSta>"
  "tm_msgs/AskSta")