; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude SetIO-request.msg.html

(cl:defclass <SetIO-request> (roslisp-msg-protocol:ros-message)
  ((module
    :reader module
    :initarg :module
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetIO-request (<SetIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SetIO-request> is deprecated: use tm_msgs-srv:SetIO-request instead.")))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:module-val is deprecated.  Use tm_msgs-srv:module instead.")
  (module m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:type-val is deprecated.  Use tm_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:pin-val is deprecated.  Use tm_msgs-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:state-val is deprecated.  Use tm_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetIO-request>)))
    "Constants for message type '<SetIO-request>"
  '((:MODULE_CONTROLBOX . 0)
    (:MODULE_ENDEFFECTOR . 1)
    (:TYPE_DIGITAL_IN . 0)
    (:TYPE_DIGITAL_OUT . 1)
    (:TYPE_INSTANT_DO . 2)
    (:TYPE_ANALOG_IN . 3)
    (:TYPE_ANALOG_OUT . 4)
    (:TYPE_INSTANT_AO . 5)
    (:STATE_OFF . 0)
    (:STATE_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetIO-request)))
    "Constants for message type 'SetIO-request"
  '((:MODULE_CONTROLBOX . 0)
    (:MODULE_ENDEFFECTOR . 1)
    (:TYPE_DIGITAL_IN . 0)
    (:TYPE_DIGITAL_OUT . 1)
    (:TYPE_INSTANT_DO . 2)
    (:TYPE_ANALOG_IN . 3)
    (:TYPE_ANALOG_OUT . 4)
    (:TYPE_INSTANT_AO . 5)
    (:STATE_OFF . 0)
    (:STATE_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIO-request>) ostream)
  "Serializes a message object of type '<SetIO-request>"
  (cl:let* ((signed (cl:slot-value msg 'module)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIO-request>) istream)
  "Deserializes a message object of type '<SetIO-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIO-request>)))
  "Returns string type for a service object of type '<SetIO-request>"
  "tm_msgs/SetIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO-request)))
  "Returns string type for a service object of type 'SetIO-request"
  "tm_msgs/SetIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIO-request>)))
  "Returns md5sum for a message object of type '<SetIO-request>"
  "ee6cbf90dc535c1e6656dd67997a2cd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIO-request)))
  "Returns md5sum for a message object of type 'SetIO-request"
  "ee6cbf90dc535c1e6656dd67997a2cd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIO-request>)))
  "Returns full string definition for message of type '<SetIO-request>"
  (cl:format cl:nil "# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 6.5 IO~%int8 MODULE_CONTROLBOX = 0~%int8 MODULE_ENDEFFECTOR = 1~%~%int8 TYPE_DIGITAL_IN = 0~%int8 TYPE_DIGITAL_OUT = 1~%int8 TYPE_INSTANT_DO = 2~%int8 TYPE_ANALOG_IN = 3~%int8 TYPE_ANALOG_OUT = 4~%int8 TYPE_INSTANT_AO = 5~%~%int8 STATE_OFF = 0~%int8 STATE_ON = 1~%~%# request fields~%int8 module~%int8 type~%int8 pin~%float32 state #STATE_OFF or STATE_ON value, or other value (if type expressed in a specific control module)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIO-request)))
  "Returns full string definition for message of type 'SetIO-request"
  (cl:format cl:nil "# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 6.5 IO~%int8 MODULE_CONTROLBOX = 0~%int8 MODULE_ENDEFFECTOR = 1~%~%int8 TYPE_DIGITAL_IN = 0~%int8 TYPE_DIGITAL_OUT = 1~%int8 TYPE_INSTANT_DO = 2~%int8 TYPE_ANALOG_IN = 3~%int8 TYPE_ANALOG_OUT = 4~%int8 TYPE_INSTANT_AO = 5~%~%int8 STATE_OFF = 0~%int8 STATE_ON = 1~%~%# request fields~%int8 module~%int8 type~%int8 pin~%float32 state #STATE_OFF or STATE_ON value, or other value (if type expressed in a specific control module)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIO-request>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIO-request
    (cl:cons ':module (module msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pin (pin msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetIO-response.msg.html

(cl:defclass <SetIO-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetIO-response (<SetIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SetIO-response> is deprecated: use tm_msgs-srv:SetIO-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIO-response>) ostream)
  "Serializes a message object of type '<SetIO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIO-response>) istream)
  "Deserializes a message object of type '<SetIO-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIO-response>)))
  "Returns string type for a service object of type '<SetIO-response>"
  "tm_msgs/SetIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO-response)))
  "Returns string type for a service object of type 'SetIO-response"
  "tm_msgs/SetIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIO-response>)))
  "Returns md5sum for a message object of type '<SetIO-response>"
  "ee6cbf90dc535c1e6656dd67997a2cd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIO-response)))
  "Returns md5sum for a message object of type 'SetIO-response"
  "ee6cbf90dc535c1e6656dd67997a2cd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIO-response>)))
  "Returns full string definition for message of type '<SetIO-response>"
  (cl:format cl:nil "#ok= set function status~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIO-response)))
  "Returns full string definition for message of type 'SetIO-response"
  (cl:format cl:nil "#ok= set function status~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIO-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIO-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIO)))
  'SetIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIO)))
  'SetIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO)))
  "Returns string type for a service object of type '<SetIO>"
  "tm_msgs/SetIO")