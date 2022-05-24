; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude ConnectTM-request.msg.html

(cl:defclass <ConnectTM-request> (roslisp-msg-protocol:ros-message)
  ((server
    :reader server
    :initarg :server
    :type cl:fixnum
    :initform 0)
   (connect
    :reader connect
    :initarg :connect
    :type cl:boolean
    :initform cl:nil)
   (reconnect
    :reader reconnect
    :initarg :reconnect
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0)
   (timeval
    :reader timeval
    :initarg :timeval
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConnectTM-request (<ConnectTM-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectTM-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectTM-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<ConnectTM-request> is deprecated: use tm_msgs-srv:ConnectTM-request instead.")))

(cl:ensure-generic-function 'server-val :lambda-list '(m))
(cl:defmethod server-val ((m <ConnectTM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:server-val is deprecated.  Use tm_msgs-srv:server instead.")
  (server m))

(cl:ensure-generic-function 'connect-val :lambda-list '(m))
(cl:defmethod connect-val ((m <ConnectTM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:connect-val is deprecated.  Use tm_msgs-srv:connect instead.")
  (connect m))

(cl:ensure-generic-function 'reconnect-val :lambda-list '(m))
(cl:defmethod reconnect-val ((m <ConnectTM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:reconnect-val is deprecated.  Use tm_msgs-srv:reconnect instead.")
  (reconnect m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <ConnectTM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:timeout-val is deprecated.  Use tm_msgs-srv:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'timeval-val :lambda-list '(m))
(cl:defmethod timeval-val ((m <ConnectTM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:timeval-val is deprecated.  Use tm_msgs-srv:timeval instead.")
  (timeval m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConnectTM-request>)))
    "Constants for message type '<ConnectTM-request>"
  '((:TMSVR . 0)
    (:TMSCT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConnectTM-request)))
    "Constants for message type 'ConnectTM-request"
  '((:TMSVR . 0)
    (:TMSCT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectTM-request>) ostream)
  "Serializes a message object of type '<ConnectTM-request>"
  (cl:let* ((signed (cl:slot-value msg 'server)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reconnect) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectTM-request>) istream)
  "Deserializes a message object of type '<ConnectTM-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'server) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'connect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reconnect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeval) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectTM-request>)))
  "Returns string type for a service object of type '<ConnectTM-request>"
  "tm_msgs/ConnectTMRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectTM-request)))
  "Returns string type for a service object of type 'ConnectTM-request"
  "tm_msgs/ConnectTMRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectTM-request>)))
  "Returns md5sum for a message object of type '<ConnectTM-request>"
  "0d50ce933552e4d5e66858757bce799c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectTM-request)))
  "Returns md5sum for a message object of type 'ConnectTM-request"
  "0d50ce933552e4d5e66858757bce799c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectTM-request>)))
  "Returns full string definition for message of type '<ConnectTM-request>"
  (cl:format cl:nil "#float64 DEFAULT_TIMEOUT = 1.0~%#float64 DEFAULT_TIMEVAL = 3.0~%#server :   TMSVR, TMSCT~%#connect/reconnect : In Connection phase. ~%#connect    == true. Keeping connect function~%#reconnect  == true. If connect funcition fail, It will reconnect.~%~%int8 TMSVR = 0~%int8 TMSCT = 1~%~%int8 server~%bool connect~%bool reconnect~%float64 timeout~%float64 timeval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectTM-request)))
  "Returns full string definition for message of type 'ConnectTM-request"
  (cl:format cl:nil "#float64 DEFAULT_TIMEOUT = 1.0~%#float64 DEFAULT_TIMEVAL = 3.0~%#server :   TMSVR, TMSCT~%#connect/reconnect : In Connection phase. ~%#connect    == true. Keeping connect function~%#reconnect  == true. If connect funcition fail, It will reconnect.~%~%int8 TMSVR = 0~%int8 TMSCT = 1~%~%int8 server~%bool connect~%bool reconnect~%float64 timeout~%float64 timeval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectTM-request>))
  (cl:+ 0
     1
     1
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectTM-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectTM-request
    (cl:cons ':server (server msg))
    (cl:cons ':connect (connect msg))
    (cl:cons ':reconnect (reconnect msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':timeval (timeval msg))
))
;//! \htmlinclude ConnectTM-response.msg.html

(cl:defclass <ConnectTM-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConnectTM-response (<ConnectTM-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectTM-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectTM-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<ConnectTM-response> is deprecated: use tm_msgs-srv:ConnectTM-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <ConnectTM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectTM-response>) ostream)
  "Serializes a message object of type '<ConnectTM-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectTM-response>) istream)
  "Deserializes a message object of type '<ConnectTM-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectTM-response>)))
  "Returns string type for a service object of type '<ConnectTM-response>"
  "tm_msgs/ConnectTMResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectTM-response)))
  "Returns string type for a service object of type 'ConnectTM-response"
  "tm_msgs/ConnectTMResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectTM-response>)))
  "Returns md5sum for a message object of type '<ConnectTM-response>"
  "0d50ce933552e4d5e66858757bce799c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectTM-response)))
  "Returns md5sum for a message object of type 'ConnectTM-response"
  "0d50ce933552e4d5e66858757bce799c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectTM-response>)))
  "Returns full string definition for message of type '<ConnectTM-response>"
  (cl:format cl:nil "#ok :   connect status~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectTM-response)))
  "Returns full string definition for message of type 'ConnectTM-response"
  (cl:format cl:nil "#ok :   connect status~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectTM-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectTM-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectTM-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConnectTM)))
  'ConnectTM-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConnectTM)))
  'ConnectTM-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectTM)))
  "Returns string type for a service object of type '<ConnectTM>"
  "tm_msgs/ConnectTM")