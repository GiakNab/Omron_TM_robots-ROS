; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude SetEvent-request.msg.html

(cl:defclass <SetEvent-request> (roslisp-msg-protocol:ros-message)
  ((func
    :reader func
    :initarg :func
    :type cl:fixnum
    :initform 0)
   (arg0
    :reader arg0
    :initarg :arg0
    :type cl:fixnum
    :initform 0)
   (arg1
    :reader arg1
    :initarg :arg1
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetEvent-request (<SetEvent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEvent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEvent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SetEvent-request> is deprecated: use tm_msgs-srv:SetEvent-request instead.")))

(cl:ensure-generic-function 'func-val :lambda-list '(m))
(cl:defmethod func-val ((m <SetEvent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:func-val is deprecated.  Use tm_msgs-srv:func instead.")
  (func m))

(cl:ensure-generic-function 'arg0-val :lambda-list '(m))
(cl:defmethod arg0-val ((m <SetEvent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:arg0-val is deprecated.  Use tm_msgs-srv:arg0 instead.")
  (arg0 m))

(cl:ensure-generic-function 'arg1-val :lambda-list '(m))
(cl:defmethod arg1-val ((m <SetEvent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:arg1-val is deprecated.  Use tm_msgs-srv:arg1 instead.")
  (arg1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetEvent-request>)))
    "Constants for message type '<SetEvent-request>"
  '((:TAG . 1)
    (:WAIT_TAG . 2)
    (:STOP . 11)
    (:PAUSE . 12)
    (:RESUME . 13)
    (:EXIT . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetEvent-request)))
    "Constants for message type 'SetEvent-request"
  '((:TAG . 1)
    (:WAIT_TAG . 2)
    (:STOP . 11)
    (:PAUSE . 12)
    (:RESUME . 13)
    (:EXIT . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEvent-request>) ostream)
  "Serializes a message object of type '<SetEvent-request>"
  (cl:let* ((signed (cl:slot-value msg 'func)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEvent-request>) istream)
  "Deserializes a message object of type '<SetEvent-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'func) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg0) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg1) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEvent-request>)))
  "Returns string type for a service object of type '<SetEvent-request>"
  "tm_msgs/SetEventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEvent-request)))
  "Returns string type for a service object of type 'SetEvent-request"
  "tm_msgs/SetEventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEvent-request>)))
  "Returns md5sum for a message object of type '<SetEvent-request>"
  "62b75d8dc56191f201e7699fc646eb67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEvent-request)))
  "Returns md5sum for a message object of type 'SetEvent-request"
  "62b75d8dc56191f201e7699fc646eb67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEvent-request>)))
  "Returns full string definition for message of type '<SetEvent-request>"
  (cl:format cl:nil "# More details please refer to the tm_ros_service.cpp/set_event function.~%int8 TAG = 1~%int8 WAIT_TAG = 2~%int8 STOP = 11~%int8 PAUSE = 12~%int8 RESUME = 13~%~%int8 EXIT = -1~%~%int8 func~%int8 arg0 # if fun is TAG or WAIT_TAG, arg0 is timeout in ms~%int8 arg1 # if fun is TAG or WAIT_TAG, arg1 is id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEvent-request)))
  "Returns full string definition for message of type 'SetEvent-request"
  (cl:format cl:nil "# More details please refer to the tm_ros_service.cpp/set_event function.~%int8 TAG = 1~%int8 WAIT_TAG = 2~%int8 STOP = 11~%int8 PAUSE = 12~%int8 RESUME = 13~%~%int8 EXIT = -1~%~%int8 func~%int8 arg0 # if fun is TAG or WAIT_TAG, arg0 is timeout in ms~%int8 arg1 # if fun is TAG or WAIT_TAG, arg1 is id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEvent-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEvent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEvent-request
    (cl:cons ':func (func msg))
    (cl:cons ':arg0 (arg0 msg))
    (cl:cons ':arg1 (arg1 msg))
))
;//! \htmlinclude SetEvent-response.msg.html

(cl:defclass <SetEvent-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEvent-response (<SetEvent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEvent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEvent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SetEvent-response> is deprecated: use tm_msgs-srv:SetEvent-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SetEvent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEvent-response>) ostream)
  "Serializes a message object of type '<SetEvent-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEvent-response>) istream)
  "Deserializes a message object of type '<SetEvent-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEvent-response>)))
  "Returns string type for a service object of type '<SetEvent-response>"
  "tm_msgs/SetEventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEvent-response)))
  "Returns string type for a service object of type 'SetEvent-response"
  "tm_msgs/SetEventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEvent-response>)))
  "Returns md5sum for a message object of type '<SetEvent-response>"
  "62b75d8dc56191f201e7699fc646eb67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEvent-response)))
  "Returns md5sum for a message object of type 'SetEvent-response"
  "62b75d8dc56191f201e7699fc646eb67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEvent-response>)))
  "Returns full string definition for message of type '<SetEvent-response>"
  (cl:format cl:nil "#ok == complete status~%bool ok~%# int8 rv~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEvent-response)))
  "Returns full string definition for message of type 'SetEvent-response"
  (cl:format cl:nil "#ok == complete status~%bool ok~%# int8 rv~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEvent-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEvent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEvent-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEvent)))
  'SetEvent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEvent)))
  'SetEvent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEvent)))
  "Returns string type for a service object of type '<SetEvent>"
  "tm_msgs/SetEvent")