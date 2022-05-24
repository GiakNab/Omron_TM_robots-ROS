;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::SctResponse)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'SctResponse (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::SCTRESPONSE")
  (make-package "TM_MSGS::SCTRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SctResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tm_msgs::SctResponse
  :super ros::object
  :slots (_header _id _script ))

(defmethod tm_msgs::SctResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) "")
    ((:script __script) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (string __id))
   (setq _script (string __script))
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
  (:script
   (&optional __script)
   (if __script (setq _script __script)) _script)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id
    4 (length _id)
    ;; string _script
    4 (length _script)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _script
       (write-long (length _script) s) (princ _script s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _script
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _script (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tm_msgs::SctResponse :md5sum-) "36fc752cb7af4e35e40e062d5409444d")
(setf (get tm_msgs::SctResponse :datatype-) "tm_msgs/SctResponse")
(setf (get tm_msgs::SctResponse :definition-)
      "# For SendScript / SetXXX service
# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4

Header header

string id
string script

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



(provide :tm_msgs/SctResponse "36fc752cb7af4e35e40e062d5409444d")


