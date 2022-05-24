;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::AskSta)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'AskSta (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::ASKSTA")
  (make-package "TM_MSGS::ASKSTA"))
(unless (find-package "TM_MSGS::ASKSTAREQUEST")
  (make-package "TM_MSGS::ASKSTAREQUEST"))
(unless (find-package "TM_MSGS::ASKSTARESPONSE")
  (make-package "TM_MSGS::ASKSTARESPONSE"))

(in-package "ROS")





(defclass tm_msgs::AskStaRequest
  :super ros::object
  :slots (_subcmd _subdata _wait_time ))

(defmethod tm_msgs::AskStaRequest
  (:init
   (&key
    ((:subcmd __subcmd) "")
    ((:subdata __subdata) "")
    ((:wait_time __wait_time) 0.0)
    )
   (send-super :init)
   (setq _subcmd (string __subcmd))
   (setq _subdata (string __subdata))
   (setq _wait_time (float __wait_time))
   self)
  (:subcmd
   (&optional __subcmd)
   (if __subcmd (setq _subcmd __subcmd)) _subcmd)
  (:subdata
   (&optional __subdata)
   (if __subdata (setq _subdata __subdata)) _subdata)
  (:wait_time
   (&optional __wait_time)
   (if __wait_time (setq _wait_time __wait_time)) _wait_time)
  (:serialization-length
   ()
   (+
    ;; string _subcmd
    4 (length _subcmd)
    ;; string _subdata
    4 (length _subdata)
    ;; float64 _wait_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subcmd
       (write-long (length _subcmd) s) (princ _subcmd s)
     ;; string _subdata
       (write-long (length _subdata) s) (princ _subdata s)
     ;; float64 _wait_time
       (sys::poke _wait_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subcmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subcmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _subdata
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subdata (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _wait_time
     (setq _wait_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass tm_msgs::AskStaResponse
  :super ros::object
  :slots (_ok _subcmd _subdata ))

(defmethod tm_msgs::AskStaResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:subcmd __subcmd) "")
    ((:subdata __subdata) "")
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _subcmd (string __subcmd))
   (setq _subdata (string __subdata))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:subcmd
   (&optional __subcmd)
   (if __subcmd (setq _subcmd __subcmd)) _subcmd)
  (:subdata
   (&optional __subdata)
   (if __subdata (setq _subdata __subdata)) _subdata)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string _subcmd
    4 (length _subcmd)
    ;; string _subdata
    4 (length _subdata)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string _subcmd
       (write-long (length _subcmd) s) (princ _subcmd s)
     ;; string _subdata
       (write-long (length _subdata) s) (princ _subdata s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _subcmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subcmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _subdata
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subdata (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tm_msgs::AskSta
  :super ros::object
  :slots ())

(setf (get tm_msgs::AskSta :md5sum-) "8d2ef2c8296a1b6a1aea258b0876a209")
(setf (get tm_msgs::AskSta :datatype-) "tm_msgs/AskSta")
(setf (get tm_msgs::AskSta :request) tm_msgs::AskStaRequest)
(setf (get tm_msgs::AskSta :response) tm_msgs::AskStaResponse)

(defmethod tm_msgs::AskStaRequest
  (:response () (instance tm_msgs::AskStaResponse :init)))

(setf (get tm_msgs::AskStaRequest :md5sum-) "8d2ef2c8296a1b6a1aea258b0876a209")
(setf (get tm_msgs::AskStaRequest :datatype-) "tm_msgs/AskStaRequest")
(setf (get tm_msgs::AskStaRequest :definition-)
      "# Ask: request 'Read' sta
# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5 TMSTA
# wait_time : set wait time.

string subcmd
string subdata

float64 wait_time

---
# ok        : read status 
bool ok

string subcmd
string subdata
")

(setf (get tm_msgs::AskStaResponse :md5sum-) "8d2ef2c8296a1b6a1aea258b0876a209")
(setf (get tm_msgs::AskStaResponse :datatype-) "tm_msgs/AskStaResponse")
(setf (get tm_msgs::AskStaResponse :definition-)
      "# Ask: request 'Read' sta
# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.5 TMSTA
# wait_time : set wait time.

string subcmd
string subdata

float64 wait_time

---
# ok        : read status 
bool ok

string subcmd
string subdata
")



(provide :tm_msgs/AskSta "8d2ef2c8296a1b6a1aea258b0876a209")


