; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude SetPositions-request.msg.html

(cl:defclass <SetPositions-request> (roslisp-msg-protocol:ros-message)
  ((motion_type
    :reader motion_type
    :initarg :motion_type
    :type cl:fixnum
    :initform 0)
   (positions
    :reader positions
    :initarg :positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (acc_time
    :reader acc_time
    :initarg :acc_time
    :type cl:float
    :initform 0.0)
   (blend_percentage
    :reader blend_percentage
    :initarg :blend_percentage
    :type cl:integer
    :initform 0)
   (fine_goal
    :reader fine_goal
    :initarg :fine_goal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPositions-request (<SetPositions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPositions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPositions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SetPositions-request> is deprecated: use tm_msgs-srv:SetPositions-request instead.")))

(cl:ensure-generic-function 'motion_type-val :lambda-list '(m))
(cl:defmethod motion_type-val ((m <SetPositions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:motion_type-val is deprecated.  Use tm_msgs-srv:motion_type instead.")
  (motion_type m))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <SetPositions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:positions-val is deprecated.  Use tm_msgs-srv:positions instead.")
  (positions m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SetPositions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:velocity-val is deprecated.  Use tm_msgs-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acc_time-val :lambda-list '(m))
(cl:defmethod acc_time-val ((m <SetPositions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:acc_time-val is deprecated.  Use tm_msgs-srv:acc_time instead.")
  (acc_time m))

(cl:ensure-generic-function 'blend_percentage-val :lambda-list '(m))
(cl:defmethod blend_percentage-val ((m <SetPositions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:blend_percentage-val is deprecated.  Use tm_msgs-srv:blend_percentage instead.")
  (blend_percentage m))

(cl:ensure-generic-function 'fine_goal-val :lambda-list '(m))
(cl:defmethod fine_goal-val ((m <SetPositions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:fine_goal-val is deprecated.  Use tm_msgs-srv:fine_goal instead.")
  (fine_goal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetPositions-request>)))
    "Constants for message type '<SetPositions-request>"
  '((:PTP_J . 1)
    (:PTP_T . 2)
    (:LINE_T . 4)
    (:CIRC_T . 6)
    (:PLINE_T . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetPositions-request)))
    "Constants for message type 'SetPositions-request"
  '((:PTP_J . 1)
    (:PTP_T . 2)
    (:LINE_T . 4)
    (:CIRC_T . 6)
    (:PLINE_T . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPositions-request>) ostream)
  "Serializes a message object of type '<SetPositions-request>"
  (cl:let* ((signed (cl:slot-value msg 'motion_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'positions))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'blend_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fine_goal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPositions-request>) istream)
  "Deserializes a message object of type '<SetPositions-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'blend_percentage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'fine_goal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPositions-request>)))
  "Returns string type for a service object of type '<SetPositions-request>"
  "tm_msgs/SetPositionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPositions-request)))
  "Returns string type for a service object of type 'SetPositions-request"
  "tm_msgs/SetPositionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPositions-request>)))
  "Returns md5sum for a message object of type '<SetPositions-request>"
  "0bbf77b368ab8921b229f24921a6e9d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPositions-request)))
  "Returns md5sum for a message object of type 'SetPositions-request"
  "0bbf77b368ab8921b229f24921a6e9d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPositions-request>)))
  "Returns full string definition for message of type '<SetPositions-request>"
  (cl:format cl:nil "#motion_type :  PTP_J , PTP_T , LINE_J , LINE_T ,~%#               CIRC_J ,CIRC_T , PLINE_J ,PLINE_T~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 8.6-8.9~%int8 PTP_J = 1~%int8 PTP_T = 2~%#int8 LINE_J = 3~%int8 LINE_T = 4~%#int8 CIRC_J = 5~%int8 CIRC_T = 6~%#int8 PLINE_J = 7~%int8 PLINE_T = 8~%~%int8 motion_type~%float64[] positions~%float64 velocity       # motion velocity: if expressed in Cartesian coordinate (unit: m/s) , if expressed in joint velocity (unit: rad/s, and the maximum value is limited to pi )~%float64 acc_time       # time to reach maximum speed (unit: ms)~%int32 blend_percentage # blending value: expressed as a percentage (unit: %, and the minimum value of 0 means no blending)~%bool fine_goal         # precise position mode : If activated, the amount of error in the final position will converge more.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPositions-request)))
  "Returns full string definition for message of type 'SetPositions-request"
  (cl:format cl:nil "#motion_type :  PTP_J , PTP_T , LINE_J , LINE_T ,~%#               CIRC_J ,CIRC_T , PLINE_J ,PLINE_T~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 8.6-8.9~%int8 PTP_J = 1~%int8 PTP_T = 2~%#int8 LINE_J = 3~%int8 LINE_T = 4~%#int8 CIRC_J = 5~%int8 CIRC_T = 6~%#int8 PLINE_J = 7~%int8 PLINE_T = 8~%~%int8 motion_type~%float64[] positions~%float64 velocity       # motion velocity: if expressed in Cartesian coordinate (unit: m/s) , if expressed in joint velocity (unit: rad/s, and the maximum value is limited to pi )~%float64 acc_time       # time to reach maximum speed (unit: ms)~%int32 blend_percentage # blending value: expressed as a percentage (unit: %, and the minimum value of 0 means no blending)~%bool fine_goal         # precise position mode : If activated, the amount of error in the final position will converge more.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPositions-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPositions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPositions-request
    (cl:cons ':motion_type (motion_type msg))
    (cl:cons ':positions (positions msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acc_time (acc_time msg))
    (cl:cons ':blend_percentage (blend_percentage msg))
    (cl:cons ':fine_goal (fine_goal msg))
))
;//! \htmlinclude SetPositions-response.msg.html

(cl:defclass <SetPositions-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPositions-response (<SetPositions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPositions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPositions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SetPositions-response> is deprecated: use tm_msgs-srv:SetPositions-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SetPositions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPositions-response>) ostream)
  "Serializes a message object of type '<SetPositions-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPositions-response>) istream)
  "Deserializes a message object of type '<SetPositions-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPositions-response>)))
  "Returns string type for a service object of type '<SetPositions-response>"
  "tm_msgs/SetPositionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPositions-response)))
  "Returns string type for a service object of type 'SetPositions-response"
  "tm_msgs/SetPositionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPositions-response>)))
  "Returns md5sum for a message object of type '<SetPositions-response>"
  "0bbf77b368ab8921b229f24921a6e9d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPositions-response)))
  "Returns md5sum for a message object of type 'SetPositions-response"
  "0bbf77b368ab8921b229f24921a6e9d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPositions-response>)))
  "Returns full string definition for message of type '<SetPositions-response>"
  (cl:format cl:nil "# ok :  set motion status ~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPositions-response)))
  "Returns full string definition for message of type 'SetPositions-response"
  (cl:format cl:nil "# ok :  set motion status ~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPositions-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPositions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPositions-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPositions)))
  'SetPositions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPositions)))
  'SetPositions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPositions)))
  "Returns string type for a service object of type '<SetPositions>"
  "tm_msgs/SetPositions")