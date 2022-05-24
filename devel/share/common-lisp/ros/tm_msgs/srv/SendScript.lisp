; Auto-generated. Do not edit!


(cl:in-package tm_msgs-srv)


;//! \htmlinclude SendScript-request.msg.html

(cl:defclass <SendScript-request> (roslisp-msg-protocol:ros-message)
  ((id
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

(cl:defclass SendScript-request (<SendScript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendScript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendScript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SendScript-request> is deprecated: use tm_msgs-srv:SendScript-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SendScript-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:id-val is deprecated.  Use tm_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'script-val :lambda-list '(m))
(cl:defmethod script-val ((m <SendScript-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:script-val is deprecated.  Use tm_msgs-srv:script instead.")
  (script m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendScript-request>) ostream)
  "Serializes a message object of type '<SendScript-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendScript-request>) istream)
  "Deserializes a message object of type '<SendScript-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendScript-request>)))
  "Returns string type for a service object of type '<SendScript-request>"
  "tm_msgs/SendScriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendScript-request)))
  "Returns string type for a service object of type 'SendScript-request"
  "tm_msgs/SendScriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendScript-request>)))
  "Returns md5sum for a message object of type '<SendScript-request>"
  "f7c1ec2437ee83ce8a1998e89ee510ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendScript-request)))
  "Returns md5sum for a message object of type 'SendScript-request"
  "f7c1ec2437ee83ce8a1998e89ee510ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendScript-request>)))
  "Returns full string definition for message of type '<SendScript-request>"
  (cl:format cl:nil "# request fields~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT~%~%string id~%string script~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendScript-request)))
  "Returns full string definition for message of type 'SendScript-request"
  (cl:format cl:nil "# request fields~%# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT~%~%string id~%string script~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendScript-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'script))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendScript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendScript-request
    (cl:cons ':id (id msg))
    (cl:cons ':script (script msg))
))
;//! \htmlinclude SendScript-response.msg.html

(cl:defclass <SendScript-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendScript-response (<SendScript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendScript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendScript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-srv:<SendScript-response> is deprecated: use tm_msgs-srv:SendScript-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SendScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-srv:ok-val is deprecated.  Use tm_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendScript-response>) ostream)
  "Serializes a message object of type '<SendScript-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendScript-response>) istream)
  "Deserializes a message object of type '<SendScript-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendScript-response>)))
  "Returns string type for a service object of type '<SendScript-response>"
  "tm_msgs/SendScriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendScript-response)))
  "Returns string type for a service object of type 'SendScript-response"
  "tm_msgs/SendScriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendScript-response>)))
  "Returns md5sum for a message object of type '<SendScript-response>"
  "f7c1ec2437ee83ce8a1998e89ee510ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendScript-response)))
  "Returns md5sum for a message object of type 'SendScript-response"
  "f7c1ec2437ee83ce8a1998e89ee510ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendScript-response>)))
  "Returns full string definition for message of type '<SendScript-response>"
  (cl:format cl:nil "#ok =   Correctness of the script.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendScript-response)))
  "Returns full string definition for message of type 'SendScript-response"
  (cl:format cl:nil "#ok =   Correctness of the script.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendScript-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendScript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendScript-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendScript)))
  'SendScript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendScript)))
  'SendScript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendScript)))
  "Returns string type for a service object of type '<SendScript>"
  "tm_msgs/SendScript")