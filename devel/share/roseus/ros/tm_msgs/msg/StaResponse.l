;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::StaResponse)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'StaResponse (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::STARESPONSE")
  (make-package "TM_MSGS::STARESPONSE"))

(in-package "ROS")
;;//! \htmlinclude StaResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tm_msgs::StaResponse
  :super ros::object
  :slots (_header _subcmd _subdata ))

(defmethod tm_msgs::StaResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:subcmd __subcmd) "")
    ((:subdata __subdata) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _subcmd (string __subcmd))
   (setq _subdata (string __subdata))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:subcmd
   (&optional __subcmd)
   (if __subcmd (setq _subcmd __subcmd)) _subcmd)
  (:subdata
   (&optional __subdata)
   (if __subdata (setq _subdata __subdata)) _subdata)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _subcmd
    4 (length _subcmd)
    ;; string _subdata
    4 (length _subdata)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _subcmd
       (write-long (length _subcmd) s) (princ _subcmd s)
     ;; string _subdata
       (write-long (length _subdata) s) (princ _subdata s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _subcmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subcmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _subdata
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subdata (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tm_msgs::StaResponse :md5sum-) "3a5171002fa543efe0e7302c1efd2051")
(setf (get tm_msgs::StaResponse :datatype-) "tm_msgs/StaResponse")
(setf (get tm_msgs::StaResponse :definition-)
      "# For SetEvent TAG / AskSta service
# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5

Header header

string subcmd
string subdata

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



(provide :tm_msgs/StaResponse "3a5171002fa543efe0e7302c1efd2051")


