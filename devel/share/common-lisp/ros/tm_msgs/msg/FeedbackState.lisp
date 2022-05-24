; Auto-generated. Do not edit!


(cl:in-package tm_msgs-msg)


;//! \htmlinclude FeedbackState.msg.html

(cl:defclass <FeedbackState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_svr_connected
    :reader is_svr_connected
    :initarg :is_svr_connected
    :type cl:boolean
    :initform cl:nil)
   (is_sct_connected
    :reader is_sct_connected
    :initarg :is_sct_connected
    :type cl:boolean
    :initform cl:nil)
   (tmsrv_cperr
    :reader tmsrv_cperr
    :initarg :tmsrv_cperr
    :type cl:integer
    :initform 0)
   (tmscript_cperr
    :reader tmscript_cperr
    :initarg :tmscript_cperr
    :type cl:integer
    :initform 0)
   (tmsrv_dataerr
    :reader tmsrv_dataerr
    :initarg :tmsrv_dataerr
    :type cl:integer
    :initform 0)
   (tmscript_dataerr
    :reader tmscript_dataerr
    :initarg :tmscript_dataerr
    :type cl:integer
    :initform 0)
   (max_not_connect_in_s
    :reader max_not_connect_in_s
    :initarg :max_not_connect_in_s
    :type cl:integer
    :initform 0)
   (disconnection_times
    :reader disconnection_times
    :initarg :disconnection_times
    :type cl:integer
    :initform 0)
   (joint_pos
    :reader joint_pos
    :initarg :joint_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_vel
    :reader joint_vel
    :initarg :joint_vel
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_tor
    :reader joint_tor
    :initarg :joint_tor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tool0_pose
    :reader tool0_pose
    :initarg :tool0_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tool_pose
    :reader tool_pose
    :initarg :tool_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tcp_speed
    :reader tcp_speed
    :initarg :tcp_speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tcp_force
    :reader tcp_force
    :initarg :tcp_force
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_tor_average
    :reader joint_tor_average
    :initarg :joint_tor_average
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_tor_min
    :reader joint_tor_min
    :initarg :joint_tor_min
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_tor_max
    :reader joint_tor_max
    :initarg :joint_tor_max
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (robot_link
    :reader robot_link
    :initarg :robot_link
    :type cl:boolean
    :initform cl:nil)
   (is_data_table_correct
    :reader is_data_table_correct
    :initarg :is_data_table_correct
    :type cl:boolean
    :initform cl:nil)
   (robot_error
    :reader robot_error
    :initarg :robot_error
    :type cl:boolean
    :initform cl:nil)
   (project_run
    :reader project_run
    :initarg :project_run
    :type cl:boolean
    :initform cl:nil)
   (project_pause
    :reader project_pause
    :initarg :project_pause
    :type cl:boolean
    :initform cl:nil)
   (safetyguard_a
    :reader safetyguard_a
    :initarg :safetyguard_a
    :type cl:boolean
    :initform cl:nil)
   (e_stop
    :reader e_stop
    :initarg :e_stop
    :type cl:boolean
    :initform cl:nil)
   (camera_light
    :reader camera_light
    :initarg :camera_light
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (project_speed
    :reader project_speed
    :initarg :project_speed
    :type cl:integer
    :initform 0)
   (ma_mode
    :reader ma_mode
    :initarg :ma_mode
    :type cl:integer
    :initform 0)
   (robot_light
    :reader robot_light
    :initarg :robot_light
    :type cl:integer
    :initform 0)
   (cb_digital_output
    :reader cb_digital_output
    :initarg :cb_digital_output
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (cb_digital_input
    :reader cb_digital_input
    :initarg :cb_digital_input
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (cb_analog_output
    :reader cb_analog_output
    :initarg :cb_analog_output
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cb_analog_input
    :reader cb_analog_input
    :initarg :cb_analog_input
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ee_digital_output
    :reader ee_digital_output
    :initarg :ee_digital_output
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (ee_digital_input
    :reader ee_digital_input
    :initarg :ee_digital_input
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (ee_analog_output
    :reader ee_analog_output
    :initarg :ee_analog_output
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ee_analog_input
    :reader ee_analog_input
    :initarg :ee_analog_input
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (error_content
    :reader error_content
    :initarg :error_content
    :type cl:string
    :initform ""))
)

(cl:defclass FeedbackState (<FeedbackState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeedbackState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeedbackState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tm_msgs-msg:<FeedbackState> is deprecated: use tm_msgs-msg:FeedbackState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:header-val is deprecated.  Use tm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_svr_connected-val :lambda-list '(m))
(cl:defmethod is_svr_connected-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:is_svr_connected-val is deprecated.  Use tm_msgs-msg:is_svr_connected instead.")
  (is_svr_connected m))

(cl:ensure-generic-function 'is_sct_connected-val :lambda-list '(m))
(cl:defmethod is_sct_connected-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:is_sct_connected-val is deprecated.  Use tm_msgs-msg:is_sct_connected instead.")
  (is_sct_connected m))

(cl:ensure-generic-function 'tmsrv_cperr-val :lambda-list '(m))
(cl:defmethod tmsrv_cperr-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tmsrv_cperr-val is deprecated.  Use tm_msgs-msg:tmsrv_cperr instead.")
  (tmsrv_cperr m))

(cl:ensure-generic-function 'tmscript_cperr-val :lambda-list '(m))
(cl:defmethod tmscript_cperr-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tmscript_cperr-val is deprecated.  Use tm_msgs-msg:tmscript_cperr instead.")
  (tmscript_cperr m))

(cl:ensure-generic-function 'tmsrv_dataerr-val :lambda-list '(m))
(cl:defmethod tmsrv_dataerr-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tmsrv_dataerr-val is deprecated.  Use tm_msgs-msg:tmsrv_dataerr instead.")
  (tmsrv_dataerr m))

(cl:ensure-generic-function 'tmscript_dataerr-val :lambda-list '(m))
(cl:defmethod tmscript_dataerr-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tmscript_dataerr-val is deprecated.  Use tm_msgs-msg:tmscript_dataerr instead.")
  (tmscript_dataerr m))

(cl:ensure-generic-function 'max_not_connect_in_s-val :lambda-list '(m))
(cl:defmethod max_not_connect_in_s-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:max_not_connect_in_s-val is deprecated.  Use tm_msgs-msg:max_not_connect_in_s instead.")
  (max_not_connect_in_s m))

(cl:ensure-generic-function 'disconnection_times-val :lambda-list '(m))
(cl:defmethod disconnection_times-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:disconnection_times-val is deprecated.  Use tm_msgs-msg:disconnection_times instead.")
  (disconnection_times m))

(cl:ensure-generic-function 'joint_pos-val :lambda-list '(m))
(cl:defmethod joint_pos-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:joint_pos-val is deprecated.  Use tm_msgs-msg:joint_pos instead.")
  (joint_pos m))

(cl:ensure-generic-function 'joint_vel-val :lambda-list '(m))
(cl:defmethod joint_vel-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:joint_vel-val is deprecated.  Use tm_msgs-msg:joint_vel instead.")
  (joint_vel m))

(cl:ensure-generic-function 'joint_tor-val :lambda-list '(m))
(cl:defmethod joint_tor-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:joint_tor-val is deprecated.  Use tm_msgs-msg:joint_tor instead.")
  (joint_tor m))

(cl:ensure-generic-function 'tool0_pose-val :lambda-list '(m))
(cl:defmethod tool0_pose-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tool0_pose-val is deprecated.  Use tm_msgs-msg:tool0_pose instead.")
  (tool0_pose m))

(cl:ensure-generic-function 'tool_pose-val :lambda-list '(m))
(cl:defmethod tool_pose-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tool_pose-val is deprecated.  Use tm_msgs-msg:tool_pose instead.")
  (tool_pose m))

(cl:ensure-generic-function 'tcp_speed-val :lambda-list '(m))
(cl:defmethod tcp_speed-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tcp_speed-val is deprecated.  Use tm_msgs-msg:tcp_speed instead.")
  (tcp_speed m))

(cl:ensure-generic-function 'tcp_force-val :lambda-list '(m))
(cl:defmethod tcp_force-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:tcp_force-val is deprecated.  Use tm_msgs-msg:tcp_force instead.")
  (tcp_force m))

(cl:ensure-generic-function 'joint_tor_average-val :lambda-list '(m))
(cl:defmethod joint_tor_average-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:joint_tor_average-val is deprecated.  Use tm_msgs-msg:joint_tor_average instead.")
  (joint_tor_average m))

(cl:ensure-generic-function 'joint_tor_min-val :lambda-list '(m))
(cl:defmethod joint_tor_min-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:joint_tor_min-val is deprecated.  Use tm_msgs-msg:joint_tor_min instead.")
  (joint_tor_min m))

(cl:ensure-generic-function 'joint_tor_max-val :lambda-list '(m))
(cl:defmethod joint_tor_max-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:joint_tor_max-val is deprecated.  Use tm_msgs-msg:joint_tor_max instead.")
  (joint_tor_max m))

(cl:ensure-generic-function 'robot_link-val :lambda-list '(m))
(cl:defmethod robot_link-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:robot_link-val is deprecated.  Use tm_msgs-msg:robot_link instead.")
  (robot_link m))

(cl:ensure-generic-function 'is_data_table_correct-val :lambda-list '(m))
(cl:defmethod is_data_table_correct-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:is_data_table_correct-val is deprecated.  Use tm_msgs-msg:is_data_table_correct instead.")
  (is_data_table_correct m))

(cl:ensure-generic-function 'robot_error-val :lambda-list '(m))
(cl:defmethod robot_error-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:robot_error-val is deprecated.  Use tm_msgs-msg:robot_error instead.")
  (robot_error m))

(cl:ensure-generic-function 'project_run-val :lambda-list '(m))
(cl:defmethod project_run-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:project_run-val is deprecated.  Use tm_msgs-msg:project_run instead.")
  (project_run m))

(cl:ensure-generic-function 'project_pause-val :lambda-list '(m))
(cl:defmethod project_pause-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:project_pause-val is deprecated.  Use tm_msgs-msg:project_pause instead.")
  (project_pause m))

(cl:ensure-generic-function 'safetyguard_a-val :lambda-list '(m))
(cl:defmethod safetyguard_a-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:safetyguard_a-val is deprecated.  Use tm_msgs-msg:safetyguard_a instead.")
  (safetyguard_a m))

(cl:ensure-generic-function 'e_stop-val :lambda-list '(m))
(cl:defmethod e_stop-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:e_stop-val is deprecated.  Use tm_msgs-msg:e_stop instead.")
  (e_stop m))

(cl:ensure-generic-function 'camera_light-val :lambda-list '(m))
(cl:defmethod camera_light-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:camera_light-val is deprecated.  Use tm_msgs-msg:camera_light instead.")
  (camera_light m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:error_code-val is deprecated.  Use tm_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'project_speed-val :lambda-list '(m))
(cl:defmethod project_speed-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:project_speed-val is deprecated.  Use tm_msgs-msg:project_speed instead.")
  (project_speed m))

(cl:ensure-generic-function 'ma_mode-val :lambda-list '(m))
(cl:defmethod ma_mode-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:ma_mode-val is deprecated.  Use tm_msgs-msg:ma_mode instead.")
  (ma_mode m))

(cl:ensure-generic-function 'robot_light-val :lambda-list '(m))
(cl:defmethod robot_light-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:robot_light-val is deprecated.  Use tm_msgs-msg:robot_light instead.")
  (robot_light m))

(cl:ensure-generic-function 'cb_digital_output-val :lambda-list '(m))
(cl:defmethod cb_digital_output-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:cb_digital_output-val is deprecated.  Use tm_msgs-msg:cb_digital_output instead.")
  (cb_digital_output m))

(cl:ensure-generic-function 'cb_digital_input-val :lambda-list '(m))
(cl:defmethod cb_digital_input-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:cb_digital_input-val is deprecated.  Use tm_msgs-msg:cb_digital_input instead.")
  (cb_digital_input m))

(cl:ensure-generic-function 'cb_analog_output-val :lambda-list '(m))
(cl:defmethod cb_analog_output-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:cb_analog_output-val is deprecated.  Use tm_msgs-msg:cb_analog_output instead.")
  (cb_analog_output m))

(cl:ensure-generic-function 'cb_analog_input-val :lambda-list '(m))
(cl:defmethod cb_analog_input-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:cb_analog_input-val is deprecated.  Use tm_msgs-msg:cb_analog_input instead.")
  (cb_analog_input m))

(cl:ensure-generic-function 'ee_digital_output-val :lambda-list '(m))
(cl:defmethod ee_digital_output-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:ee_digital_output-val is deprecated.  Use tm_msgs-msg:ee_digital_output instead.")
  (ee_digital_output m))

(cl:ensure-generic-function 'ee_digital_input-val :lambda-list '(m))
(cl:defmethod ee_digital_input-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:ee_digital_input-val is deprecated.  Use tm_msgs-msg:ee_digital_input instead.")
  (ee_digital_input m))

(cl:ensure-generic-function 'ee_analog_output-val :lambda-list '(m))
(cl:defmethod ee_analog_output-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:ee_analog_output-val is deprecated.  Use tm_msgs-msg:ee_analog_output instead.")
  (ee_analog_output m))

(cl:ensure-generic-function 'ee_analog_input-val :lambda-list '(m))
(cl:defmethod ee_analog_input-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:ee_analog_input-val is deprecated.  Use tm_msgs-msg:ee_analog_input instead.")
  (ee_analog_input m))

(cl:ensure-generic-function 'error_content-val :lambda-list '(m))
(cl:defmethod error_content-val ((m <FeedbackState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tm_msgs-msg:error_content-val is deprecated.  Use tm_msgs-msg:error_content instead.")
  (error_content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeedbackState>) ostream)
  "Serializes a message object of type '<FeedbackState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_svr_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_sct_connected) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tmsrv_cperr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tmscript_cperr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tmsrv_dataerr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tmscript_dataerr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_not_connect_in_s)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'disconnection_times)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_pos))))
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
   (cl:slot-value msg 'joint_pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_vel))))
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
   (cl:slot-value msg 'joint_vel))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_tor))))
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
   (cl:slot-value msg 'joint_tor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tool0_pose))))
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
   (cl:slot-value msg 'tool0_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tool_pose))))
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
   (cl:slot-value msg 'tool_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tcp_speed))))
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
   (cl:slot-value msg 'tcp_speed))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tcp_force))))
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
   (cl:slot-value msg 'tcp_force))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_tor_average))))
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
   (cl:slot-value msg 'joint_tor_average))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_tor_min))))
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
   (cl:slot-value msg 'joint_tor_min))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_tor_max))))
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
   (cl:slot-value msg 'joint_tor_max))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robot_link) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_data_table_correct) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robot_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'project_run) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'project_pause) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'safetyguard_a) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'e_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'camera_light) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'project_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ma_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cb_digital_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'cb_digital_output))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cb_digital_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'cb_digital_input))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cb_analog_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cb_analog_output))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cb_analog_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cb_analog_input))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ee_digital_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'ee_digital_output))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ee_digital_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'ee_digital_input))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ee_analog_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ee_analog_output))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ee_analog_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ee_analog_input))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeedbackState>) istream)
  "Deserializes a message object of type '<FeedbackState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_svr_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_sct_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tmsrv_cperr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tmscript_cperr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tmsrv_dataerr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tmscript_dataerr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_not_connect_in_s) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'disconnection_times) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_pos)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_vel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_vel)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_tor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_tor)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tool0_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tool0_pose)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tool_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tool_pose)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tcp_speed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tcp_speed)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tcp_force) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tcp_force)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_tor_average) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_tor_average)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_tor_min) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_tor_min)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_tor_max) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_tor_max)))
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
    (cl:setf (cl:slot-value msg 'robot_link) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_data_table_correct) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'robot_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'project_run) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'project_pause) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'safetyguard_a) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'e_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'camera_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'project_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ma_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cb_digital_output) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cb_digital_output)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cb_digital_input) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cb_digital_input)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cb_analog_output) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cb_analog_output)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cb_analog_input) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cb_analog_input)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ee_digital_output) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ee_digital_output)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ee_digital_input) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ee_digital_input)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ee_analog_output) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ee_analog_output)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ee_analog_input) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ee_analog_input)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeedbackState>)))
  "Returns string type for a message object of type '<FeedbackState>"
  "tm_msgs/FeedbackState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeedbackState)))
  "Returns string type for a message object of type 'FeedbackState"
  "tm_msgs/FeedbackState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeedbackState>)))
  "Returns md5sum for a message object of type '<FeedbackState>"
  "44d5702d5a7507d317011ef00404b814")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeedbackState)))
  "Returns md5sum for a message object of type 'FeedbackState"
  "44d5702d5a7507d317011ef00404b814")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeedbackState>)))
  "Returns full string definition for message of type '<FeedbackState>"
  (cl:format cl:nil "Header header~%~%# Connection Status~%bool is_svr_connected       # Ethernet connection~%bool is_sct_connected       # Listen Node connection~%~%# Response ROS Node Status~%int32 tmsrv_cperr           # TM Ethernet Slave Communication Last CPERR Error Code~%int32 tmscript_cperr        # External Script Communication Last CPERR Error Code~%int32 tmsrv_dataerr         # TMSVR Communication Last Data Error Code~%int32 tmscript_dataerr      # External Script Communication TMSCT (or TMSTA) Last Data Error Code~%~%# Disconnection Message~%int32 max_not_connect_in_s~%int32 disconnection_times~%~%# Movement~%float64[] joint_pos~%float64[] joint_vel~%float64[] joint_tor~%float64[] tool0_pose~%float64[] tool_pose~%float64[] tcp_speed~%float64[] tcp_force~%~%# Torque Data(for TM-Flow 1.84)~%float64[] joint_tor_average~%float64[] joint_tor_min~%float64[] joint_tor_max~%~%# Status~%bool robot_link              # Link Robot Controller~%bool is_data_table_correct   # Data Table Setting is Correct~%bool robot_error             # Error or Not~%bool project_run             # Project Runing or not~%bool project_pause           # Project Pause or not~%bool safetyguard_a           # Safety IO(Safeguard Port A trigger) ~%bool e_stop                  # Emergency STOP~%bool camera_light            # Light~%int32 error_code             # Last Error Code~%int32 project_speed          # Project Running Speed~%int32 ma_mode                # M/A Mode~%int32 robot_light            # Robot light~%~%# IO~%bool[] cb_digital_output~%bool[] cb_digital_input~%float32[] cb_analog_output~%float32[] cb_analog_input~%bool[] ee_digital_output~%bool[] ee_digital_input~%float32[] ee_analog_output~%float32[] ee_analog_input~%~%# String~%string error_content~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeedbackState)))
  "Returns full string definition for message of type 'FeedbackState"
  (cl:format cl:nil "Header header~%~%# Connection Status~%bool is_svr_connected       # Ethernet connection~%bool is_sct_connected       # Listen Node connection~%~%# Response ROS Node Status~%int32 tmsrv_cperr           # TM Ethernet Slave Communication Last CPERR Error Code~%int32 tmscript_cperr        # External Script Communication Last CPERR Error Code~%int32 tmsrv_dataerr         # TMSVR Communication Last Data Error Code~%int32 tmscript_dataerr      # External Script Communication TMSCT (or TMSTA) Last Data Error Code~%~%# Disconnection Message~%int32 max_not_connect_in_s~%int32 disconnection_times~%~%# Movement~%float64[] joint_pos~%float64[] joint_vel~%float64[] joint_tor~%float64[] tool0_pose~%float64[] tool_pose~%float64[] tcp_speed~%float64[] tcp_force~%~%# Torque Data(for TM-Flow 1.84)~%float64[] joint_tor_average~%float64[] joint_tor_min~%float64[] joint_tor_max~%~%# Status~%bool robot_link              # Link Robot Controller~%bool is_data_table_correct   # Data Table Setting is Correct~%bool robot_error             # Error or Not~%bool project_run             # Project Runing or not~%bool project_pause           # Project Pause or not~%bool safetyguard_a           # Safety IO(Safeguard Port A trigger) ~%bool e_stop                  # Emergency STOP~%bool camera_light            # Light~%int32 error_code             # Last Error Code~%int32 project_speed          # Project Running Speed~%int32 ma_mode                # M/A Mode~%int32 robot_light            # Robot light~%~%# IO~%bool[] cb_digital_output~%bool[] cb_digital_input~%float32[] cb_analog_output~%float32[] cb_analog_input~%bool[] ee_digital_output~%bool[] ee_digital_input~%float32[] ee_analog_output~%float32[] ee_analog_input~%~%# String~%string error_content~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeedbackState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_vel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_tor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tool0_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tool_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tcp_speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tcp_force) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_tor_average) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_tor_min) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_tor_max) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cb_digital_output) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cb_digital_input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cb_analog_output) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cb_analog_input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ee_digital_output) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ee_digital_input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ee_analog_output) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ee_analog_input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'error_content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeedbackState>))
  "Converts a ROS message object to a list"
  (cl:list 'FeedbackState
    (cl:cons ':header (header msg))
    (cl:cons ':is_svr_connected (is_svr_connected msg))
    (cl:cons ':is_sct_connected (is_sct_connected msg))
    (cl:cons ':tmsrv_cperr (tmsrv_cperr msg))
    (cl:cons ':tmscript_cperr (tmscript_cperr msg))
    (cl:cons ':tmsrv_dataerr (tmsrv_dataerr msg))
    (cl:cons ':tmscript_dataerr (tmscript_dataerr msg))
    (cl:cons ':max_not_connect_in_s (max_not_connect_in_s msg))
    (cl:cons ':disconnection_times (disconnection_times msg))
    (cl:cons ':joint_pos (joint_pos msg))
    (cl:cons ':joint_vel (joint_vel msg))
    (cl:cons ':joint_tor (joint_tor msg))
    (cl:cons ':tool0_pose (tool0_pose msg))
    (cl:cons ':tool_pose (tool_pose msg))
    (cl:cons ':tcp_speed (tcp_speed msg))
    (cl:cons ':tcp_force (tcp_force msg))
    (cl:cons ':joint_tor_average (joint_tor_average msg))
    (cl:cons ':joint_tor_min (joint_tor_min msg))
    (cl:cons ':joint_tor_max (joint_tor_max msg))
    (cl:cons ':robot_link (robot_link msg))
    (cl:cons ':is_data_table_correct (is_data_table_correct msg))
    (cl:cons ':robot_error (robot_error msg))
    (cl:cons ':project_run (project_run msg))
    (cl:cons ':project_pause (project_pause msg))
    (cl:cons ':safetyguard_a (safetyguard_a msg))
    (cl:cons ':e_stop (e_stop msg))
    (cl:cons ':camera_light (camera_light msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':project_speed (project_speed msg))
    (cl:cons ':ma_mode (ma_mode msg))
    (cl:cons ':robot_light (robot_light msg))
    (cl:cons ':cb_digital_output (cb_digital_output msg))
    (cl:cons ':cb_digital_input (cb_digital_input msg))
    (cl:cons ':cb_analog_output (cb_analog_output msg))
    (cl:cons ':cb_analog_input (cb_analog_input msg))
    (cl:cons ':ee_digital_output (ee_digital_output msg))
    (cl:cons ':ee_digital_input (ee_digital_input msg))
    (cl:cons ':ee_analog_output (ee_analog_output msg))
    (cl:cons ':ee_analog_input (ee_analog_input msg))
    (cl:cons ':error_content (error_content msg))
))
