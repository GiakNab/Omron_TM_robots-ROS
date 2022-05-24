;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::SvrResponse)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'SvrResponse (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::SVRRESPONSE")
  (make-package "TM_MSGS::SVRRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SvrResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tm_msgs::SvrResponse
  :super ros::object
  :slots (_header _id _mode _content _error_code ))

(defmethod tm_msgs::SvrResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) "")
    ((:mode __mode) 0)
    ((:content __content) "")
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (string __id))
   (setq _mode (round __mode))
   (setq _content (string __content))
   (setq _error_code (round __error_code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id
    4 (length _id)
    ;; int8 _mode
    1
    ;; string _content
    4 (length _content)
    ;; int8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int8 _mode
       (write-byte _mode s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;; int8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_code 127) (setq _error_code (- _error_code 256)))
   ;;
   self)
  )

(setf (get tm_msgs::SvrResponse :md5sum-) "26fc8fa918b76675f2a40eb53a72721d")
(setf (get tm_msgs::SvrResponse :datatype-) "tm_msgs/SvrResponse")
(setf (get tm_msgs::SvrResponse :definition-)
      "# For WriteItem / AskItem service
# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 9.6

Header header

string id
int8 mode
string content
int8 error_code

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



(provide :tm_msgs/SvrResponse "26fc8fa918b76675f2a40eb53a72721d")


