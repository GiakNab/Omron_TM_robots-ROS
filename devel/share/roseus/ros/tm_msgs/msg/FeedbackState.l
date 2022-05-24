;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::FeedbackState)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'FeedbackState (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::FEEDBACKSTATE")
  (make-package "TM_MSGS::FEEDBACKSTATE"))

(in-package "ROS")
;;//! \htmlinclude FeedbackState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tm_msgs::FeedbackState
  :super ros::object
  :slots (_header _is_svr_connected _is_sct_connected _tmsrv_cperr _tmscript_cperr _tmsrv_dataerr _tmscript_dataerr _max_not_connect_in_s _disconnection_times _joint_pos _joint_vel _joint_tor _tool0_pose _tool_pose _tcp_speed _tcp_force _joint_tor_average _joint_tor_min _joint_tor_max _robot_link _is_data_table_correct _robot_error _project_run _project_pause _safetyguard_a _e_stop _camera_light _error_code _project_speed _ma_mode _robot_light _cb_digital_output _cb_digital_input _cb_analog_output _cb_analog_input _ee_digital_output _ee_digital_input _ee_analog_output _ee_analog_input _error_content ))

(defmethod tm_msgs::FeedbackState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_svr_connected __is_svr_connected) nil)
    ((:is_sct_connected __is_sct_connected) nil)
    ((:tmsrv_cperr __tmsrv_cperr) 0)
    ((:tmscript_cperr __tmscript_cperr) 0)
    ((:tmsrv_dataerr __tmsrv_dataerr) 0)
    ((:tmscript_dataerr __tmscript_dataerr) 0)
    ((:max_not_connect_in_s __max_not_connect_in_s) 0)
    ((:disconnection_times __disconnection_times) 0)
    ((:joint_pos __joint_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_vel __joint_vel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_tor __joint_tor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool0_pose __tool0_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool_pose __tool_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tcp_speed __tcp_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tcp_force __tcp_force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_tor_average __joint_tor_average) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_tor_min __joint_tor_min) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_tor_max __joint_tor_max) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:robot_link __robot_link) nil)
    ((:is_data_table_correct __is_data_table_correct) nil)
    ((:robot_error __robot_error) nil)
    ((:project_run __project_run) nil)
    ((:project_pause __project_pause) nil)
    ((:safetyguard_a __safetyguard_a) nil)
    ((:e_stop __e_stop) nil)
    ((:camera_light __camera_light) nil)
    ((:error_code __error_code) 0)
    ((:project_speed __project_speed) 0)
    ((:ma_mode __ma_mode) 0)
    ((:robot_light __robot_light) 0)
    ((:cb_digital_output __cb_digital_output) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:cb_digital_input __cb_digital_input) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:cb_analog_output __cb_analog_output) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cb_analog_input __cb_analog_input) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ee_digital_output __ee_digital_output) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:ee_digital_input __ee_digital_input) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:ee_analog_output __ee_analog_output) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ee_analog_input __ee_analog_input) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:error_content __error_content) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_svr_connected __is_svr_connected)
   (setq _is_sct_connected __is_sct_connected)
   (setq _tmsrv_cperr (round __tmsrv_cperr))
   (setq _tmscript_cperr (round __tmscript_cperr))
   (setq _tmsrv_dataerr (round __tmsrv_dataerr))
   (setq _tmscript_dataerr (round __tmscript_dataerr))
   (setq _max_not_connect_in_s (round __max_not_connect_in_s))
   (setq _disconnection_times (round __disconnection_times))
   (setq _joint_pos __joint_pos)
   (setq _joint_vel __joint_vel)
   (setq _joint_tor __joint_tor)
   (setq _tool0_pose __tool0_pose)
   (setq _tool_pose __tool_pose)
   (setq _tcp_speed __tcp_speed)
   (setq _tcp_force __tcp_force)
   (setq _joint_tor_average __joint_tor_average)
   (setq _joint_tor_min __joint_tor_min)
   (setq _joint_tor_max __joint_tor_max)
   (setq _robot_link __robot_link)
   (setq _is_data_table_correct __is_data_table_correct)
   (setq _robot_error __robot_error)
   (setq _project_run __project_run)
   (setq _project_pause __project_pause)
   (setq _safetyguard_a __safetyguard_a)
   (setq _e_stop __e_stop)
   (setq _camera_light __camera_light)
   (setq _error_code (round __error_code))
   (setq _project_speed (round __project_speed))
   (setq _ma_mode (round __ma_mode))
   (setq _robot_light (round __robot_light))
   (setq _cb_digital_output __cb_digital_output)
   (setq _cb_digital_input __cb_digital_input)
   (setq _cb_analog_output __cb_analog_output)
   (setq _cb_analog_input __cb_analog_input)
   (setq _ee_digital_output __ee_digital_output)
   (setq _ee_digital_input __ee_digital_input)
   (setq _ee_analog_output __ee_analog_output)
   (setq _ee_analog_input __ee_analog_input)
   (setq _error_content (string __error_content))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_svr_connected
   (&optional __is_svr_connected)
   (if __is_svr_connected (setq _is_svr_connected __is_svr_connected)) _is_svr_connected)
  (:is_sct_connected
   (&optional __is_sct_connected)
   (if __is_sct_connected (setq _is_sct_connected __is_sct_connected)) _is_sct_connected)
  (:tmsrv_cperr
   (&optional __tmsrv_cperr)
   (if __tmsrv_cperr (setq _tmsrv_cperr __tmsrv_cperr)) _tmsrv_cperr)
  (:tmscript_cperr
   (&optional __tmscript_cperr)
   (if __tmscript_cperr (setq _tmscript_cperr __tmscript_cperr)) _tmscript_cperr)
  (:tmsrv_dataerr
   (&optional __tmsrv_dataerr)
   (if __tmsrv_dataerr (setq _tmsrv_dataerr __tmsrv_dataerr)) _tmsrv_dataerr)
  (:tmscript_dataerr
   (&optional __tmscript_dataerr)
   (if __tmscript_dataerr (setq _tmscript_dataerr __tmscript_dataerr)) _tmscript_dataerr)
  (:max_not_connect_in_s
   (&optional __max_not_connect_in_s)
   (if __max_not_connect_in_s (setq _max_not_connect_in_s __max_not_connect_in_s)) _max_not_connect_in_s)
  (:disconnection_times
   (&optional __disconnection_times)
   (if __disconnection_times (setq _disconnection_times __disconnection_times)) _disconnection_times)
  (:joint_pos
   (&optional __joint_pos)
   (if __joint_pos (setq _joint_pos __joint_pos)) _joint_pos)
  (:joint_vel
   (&optional __joint_vel)
   (if __joint_vel (setq _joint_vel __joint_vel)) _joint_vel)
  (:joint_tor
   (&optional __joint_tor)
   (if __joint_tor (setq _joint_tor __joint_tor)) _joint_tor)
  (:tool0_pose
   (&optional __tool0_pose)
   (if __tool0_pose (setq _tool0_pose __tool0_pose)) _tool0_pose)
  (:tool_pose
   (&optional __tool_pose)
   (if __tool_pose (setq _tool_pose __tool_pose)) _tool_pose)
  (:tcp_speed
   (&optional __tcp_speed)
   (if __tcp_speed (setq _tcp_speed __tcp_speed)) _tcp_speed)
  (:tcp_force
   (&optional __tcp_force)
   (if __tcp_force (setq _tcp_force __tcp_force)) _tcp_force)
  (:joint_tor_average
   (&optional __joint_tor_average)
   (if __joint_tor_average (setq _joint_tor_average __joint_tor_average)) _joint_tor_average)
  (:joint_tor_min
   (&optional __joint_tor_min)
   (if __joint_tor_min (setq _joint_tor_min __joint_tor_min)) _joint_tor_min)
  (:joint_tor_max
   (&optional __joint_tor_max)
   (if __joint_tor_max (setq _joint_tor_max __joint_tor_max)) _joint_tor_max)
  (:robot_link
   (&optional __robot_link)
   (if __robot_link (setq _robot_link __robot_link)) _robot_link)
  (:is_data_table_correct
   (&optional __is_data_table_correct)
   (if __is_data_table_correct (setq _is_data_table_correct __is_data_table_correct)) _is_data_table_correct)
  (:robot_error
   (&optional __robot_error)
   (if __robot_error (setq _robot_error __robot_error)) _robot_error)
  (:project_run
   (&optional __project_run)
   (if __project_run (setq _project_run __project_run)) _project_run)
  (:project_pause
   (&optional __project_pause)
   (if __project_pause (setq _project_pause __project_pause)) _project_pause)
  (:safetyguard_a
   (&optional __safetyguard_a)
   (if __safetyguard_a (setq _safetyguard_a __safetyguard_a)) _safetyguard_a)
  (:e_stop
   (&optional __e_stop)
   (if __e_stop (setq _e_stop __e_stop)) _e_stop)
  (:camera_light
   (&optional __camera_light)
   (if __camera_light (setq _camera_light __camera_light)) _camera_light)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:project_speed
   (&optional __project_speed)
   (if __project_speed (setq _project_speed __project_speed)) _project_speed)
  (:ma_mode
   (&optional __ma_mode)
   (if __ma_mode (setq _ma_mode __ma_mode)) _ma_mode)
  (:robot_light
   (&optional __robot_light)
   (if __robot_light (setq _robot_light __robot_light)) _robot_light)
  (:cb_digital_output
   (&optional __cb_digital_output)
   (if __cb_digital_output (setq _cb_digital_output __cb_digital_output)) _cb_digital_output)
  (:cb_digital_input
   (&optional __cb_digital_input)
   (if __cb_digital_input (setq _cb_digital_input __cb_digital_input)) _cb_digital_input)
  (:cb_analog_output
   (&optional __cb_analog_output)
   (if __cb_analog_output (setq _cb_analog_output __cb_analog_output)) _cb_analog_output)
  (:cb_analog_input
   (&optional __cb_analog_input)
   (if __cb_analog_input (setq _cb_analog_input __cb_analog_input)) _cb_analog_input)
  (:ee_digital_output
   (&optional __ee_digital_output)
   (if __ee_digital_output (setq _ee_digital_output __ee_digital_output)) _ee_digital_output)
  (:ee_digital_input
   (&optional __ee_digital_input)
   (if __ee_digital_input (setq _ee_digital_input __ee_digital_input)) _ee_digital_input)
  (:ee_analog_output
   (&optional __ee_analog_output)
   (if __ee_analog_output (setq _ee_analog_output __ee_analog_output)) _ee_analog_output)
  (:ee_analog_input
   (&optional __ee_analog_input)
   (if __ee_analog_input (setq _ee_analog_input __ee_analog_input)) _ee_analog_input)
  (:error_content
   (&optional __error_content)
   (if __error_content (setq _error_content __error_content)) _error_content)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_svr_connected
    1
    ;; bool _is_sct_connected
    1
    ;; int32 _tmsrv_cperr
    4
    ;; int32 _tmscript_cperr
    4
    ;; int32 _tmsrv_dataerr
    4
    ;; int32 _tmscript_dataerr
    4
    ;; int32 _max_not_connect_in_s
    4
    ;; int32 _disconnection_times
    4
    ;; float64[] _joint_pos
    (* 8    (length _joint_pos)) 4
    ;; float64[] _joint_vel
    (* 8    (length _joint_vel)) 4
    ;; float64[] _joint_tor
    (* 8    (length _joint_tor)) 4
    ;; float64[] _tool0_pose
    (* 8    (length _tool0_pose)) 4
    ;; float64[] _tool_pose
    (* 8    (length _tool_pose)) 4
    ;; float64[] _tcp_speed
    (* 8    (length _tcp_speed)) 4
    ;; float64[] _tcp_force
    (* 8    (length _tcp_force)) 4
    ;; float64[] _joint_tor_average
    (* 8    (length _joint_tor_average)) 4
    ;; float64[] _joint_tor_min
    (* 8    (length _joint_tor_min)) 4
    ;; float64[] _joint_tor_max
    (* 8    (length _joint_tor_max)) 4
    ;; bool _robot_link
    1
    ;; bool _is_data_table_correct
    1
    ;; bool _robot_error
    1
    ;; bool _project_run
    1
    ;; bool _project_pause
    1
    ;; bool _safetyguard_a
    1
    ;; bool _e_stop
    1
    ;; bool _camera_light
    1
    ;; int32 _error_code
    4
    ;; int32 _project_speed
    4
    ;; int32 _ma_mode
    4
    ;; int32 _robot_light
    4
    ;; bool[] _cb_digital_output
    (* 1    (length _cb_digital_output)) 4
    ;; bool[] _cb_digital_input
    (* 1    (length _cb_digital_input)) 4
    ;; float32[] _cb_analog_output
    (* 4    (length _cb_analog_output)) 4
    ;; float32[] _cb_analog_input
    (* 4    (length _cb_analog_input)) 4
    ;; bool[] _ee_digital_output
    (* 1    (length _ee_digital_output)) 4
    ;; bool[] _ee_digital_input
    (* 1    (length _ee_digital_input)) 4
    ;; float32[] _ee_analog_output
    (* 4    (length _ee_analog_output)) 4
    ;; float32[] _ee_analog_input
    (* 4    (length _ee_analog_input)) 4
    ;; string _error_content
    4 (length _error_content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_svr_connected
       (if _is_svr_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_sct_connected
       (if _is_sct_connected (write-byte -1 s) (write-byte 0 s))
     ;; int32 _tmsrv_cperr
       (write-long _tmsrv_cperr s)
     ;; int32 _tmscript_cperr
       (write-long _tmscript_cperr s)
     ;; int32 _tmsrv_dataerr
       (write-long _tmsrv_dataerr s)
     ;; int32 _tmscript_dataerr
       (write-long _tmscript_dataerr s)
     ;; int32 _max_not_connect_in_s
       (write-long _max_not_connect_in_s s)
     ;; int32 _disconnection_times
       (write-long _disconnection_times s)
     ;; float64[] _joint_pos
     (write-long (length _joint_pos) s)
     (dotimes (i (length _joint_pos))
       (sys::poke (elt _joint_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_vel
     (write-long (length _joint_vel) s)
     (dotimes (i (length _joint_vel))
       (sys::poke (elt _joint_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_tor
     (write-long (length _joint_tor) s)
     (dotimes (i (length _joint_tor))
       (sys::poke (elt _joint_tor i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tool0_pose
     (write-long (length _tool0_pose) s)
     (dotimes (i (length _tool0_pose))
       (sys::poke (elt _tool0_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tool_pose
     (write-long (length _tool_pose) s)
     (dotimes (i (length _tool_pose))
       (sys::poke (elt _tool_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tcp_speed
     (write-long (length _tcp_speed) s)
     (dotimes (i (length _tcp_speed))
       (sys::poke (elt _tcp_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _tcp_force
     (write-long (length _tcp_force) s)
     (dotimes (i (length _tcp_force))
       (sys::poke (elt _tcp_force i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_tor_average
     (write-long (length _joint_tor_average) s)
     (dotimes (i (length _joint_tor_average))
       (sys::poke (elt _joint_tor_average i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_tor_min
     (write-long (length _joint_tor_min) s)
     (dotimes (i (length _joint_tor_min))
       (sys::poke (elt _joint_tor_min i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_tor_max
     (write-long (length _joint_tor_max) s)
     (dotimes (i (length _joint_tor_max))
       (sys::poke (elt _joint_tor_max i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _robot_link
       (if _robot_link (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_data_table_correct
       (if _is_data_table_correct (write-byte -1 s) (write-byte 0 s))
     ;; bool _robot_error
       (if _robot_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _project_run
       (if _project_run (write-byte -1 s) (write-byte 0 s))
     ;; bool _project_pause
       (if _project_pause (write-byte -1 s) (write-byte 0 s))
     ;; bool _safetyguard_a
       (if _safetyguard_a (write-byte -1 s) (write-byte 0 s))
     ;; bool _e_stop
       (if _e_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _camera_light
       (if _camera_light (write-byte -1 s) (write-byte 0 s))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; int32 _project_speed
       (write-long _project_speed s)
     ;; int32 _ma_mode
       (write-long _ma_mode s)
     ;; int32 _robot_light
       (write-long _robot_light s)
     ;; bool[] _cb_digital_output
     (write-long (length _cb_digital_output) s)
     (dotimes (i (length _cb_digital_output))
       (if (elt _cb_digital_output i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _cb_digital_input
     (write-long (length _cb_digital_input) s)
     (dotimes (i (length _cb_digital_input))
       (if (elt _cb_digital_input i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[] _cb_analog_output
     (write-long (length _cb_analog_output) s)
     (dotimes (i (length _cb_analog_output))
       (sys::poke (elt _cb_analog_output i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _cb_analog_input
     (write-long (length _cb_analog_input) s)
     (dotimes (i (length _cb_analog_input))
       (sys::poke (elt _cb_analog_input i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool[] _ee_digital_output
     (write-long (length _ee_digital_output) s)
     (dotimes (i (length _ee_digital_output))
       (if (elt _ee_digital_output i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _ee_digital_input
     (write-long (length _ee_digital_input) s)
     (dotimes (i (length _ee_digital_input))
       (if (elt _ee_digital_input i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[] _ee_analog_output
     (write-long (length _ee_analog_output) s)
     (dotimes (i (length _ee_analog_output))
       (sys::poke (elt _ee_analog_output i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ee_analog_input
     (write-long (length _ee_analog_input) s)
     (dotimes (i (length _ee_analog_input))
       (sys::poke (elt _ee_analog_input i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _error_content
       (write-long (length _error_content) s) (princ _error_content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_svr_connected
     (setq _is_svr_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_sct_connected
     (setq _is_sct_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _tmsrv_cperr
     (setq _tmsrv_cperr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tmscript_cperr
     (setq _tmscript_cperr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tmsrv_dataerr
     (setq _tmsrv_dataerr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tmscript_dataerr
     (setq _tmscript_dataerr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _max_not_connect_in_s
     (setq _max_not_connect_in_s (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _disconnection_times
     (setq _disconnection_times (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _joint_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_tor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_tor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_tor i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tool0_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool0_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tool0_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tool_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tool_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tcp_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tcp_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tcp_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _tcp_force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tcp_force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tcp_force i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_tor_average
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_tor_average (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_tor_average i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_tor_min
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_tor_min (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_tor_min i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_tor_max
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_tor_max (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_tor_max i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _robot_link
     (setq _robot_link (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_data_table_correct
     (setq _is_data_table_correct (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _robot_error
     (setq _robot_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _project_run
     (setq _project_run (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _project_pause
     (setq _project_pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _safetyguard_a
     (setq _safetyguard_a (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _e_stop
     (setq _e_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _camera_light
     (setq _camera_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _project_speed
     (setq _project_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ma_mode
     (setq _ma_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _robot_light
     (setq _robot_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool[] _cb_digital_output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cb_digital_output (make-list n))
     (dotimes (i n)
     (setf (elt _cb_digital_output i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _cb_digital_input
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cb_digital_input (make-list n))
     (dotimes (i n)
     (setf (elt _cb_digital_input i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float32[] _cb_analog_output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cb_analog_output (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cb_analog_output i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _cb_analog_input
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cb_analog_input (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cb_analog_input i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool[] _ee_digital_output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ee_digital_output (make-list n))
     (dotimes (i n)
     (setf (elt _ee_digital_output i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _ee_digital_input
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ee_digital_input (make-list n))
     (dotimes (i n)
     (setf (elt _ee_digital_input i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float32[] _ee_analog_output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ee_analog_output (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ee_analog_output i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ee_analog_input
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ee_analog_input (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ee_analog_input i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _error_content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tm_msgs::FeedbackState :md5sum-) "44d5702d5a7507d317011ef00404b814")
(setf (get tm_msgs::FeedbackState :datatype-) "tm_msgs/FeedbackState")
(setf (get tm_msgs::FeedbackState :definition-)
      "Header header

# Connection Status
bool is_svr_connected       # Ethernet connection
bool is_sct_connected       # Listen Node connection

# Response ROS Node Status
int32 tmsrv_cperr           # TM Ethernet Slave Communication Last CPERR Error Code
int32 tmscript_cperr        # External Script Communication Last CPERR Error Code
int32 tmsrv_dataerr         # TMSVR Communication Last Data Error Code
int32 tmscript_dataerr      # External Script Communication TMSCT (or TMSTA) Last Data Error Code

# Disconnection Message
int32 max_not_connect_in_s
int32 disconnection_times

# Movement
float64[] joint_pos
float64[] joint_vel
float64[] joint_tor
float64[] tool0_pose
float64[] tool_pose
float64[] tcp_speed
float64[] tcp_force

# Torque Data(for TM-Flow 1.84)
float64[] joint_tor_average
float64[] joint_tor_min
float64[] joint_tor_max

# Status
bool robot_link              # Link Robot Controller
bool is_data_table_correct   # Data Table Setting is Correct
bool robot_error             # Error or Not
bool project_run             # Project Runing or not
bool project_pause           # Project Pause or not
bool safetyguard_a           # Safety IO(Safeguard Port A trigger) 
bool e_stop                  # Emergency STOP
bool camera_light            # Light
int32 error_code             # Last Error Code
int32 project_speed          # Project Running Speed
int32 ma_mode                # M/A Mode
int32 robot_light            # Robot light

# IO
bool[] cb_digital_output
bool[] cb_digital_input
float32[] cb_analog_output
float32[] cb_analog_input
bool[] ee_digital_output
bool[] ee_digital_input
float32[] ee_analog_output
float32[] ee_analog_input

# String
string error_content


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :tm_msgs/FeedbackState "44d5702d5a7507d317011ef00404b814")


