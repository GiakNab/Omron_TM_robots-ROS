;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::SendScript)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'SendScript (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::SENDSCRIPT")
  (make-package "TM_MSGS::SENDSCRIPT"))
(unless (find-package "TM_MSGS::SENDSCRIPTREQUEST")
  (make-package "TM_MSGS::SENDSCRIPTREQUEST"))
(unless (find-package "TM_MSGS::SENDSCRIPTRESPONSE")
  (make-package "TM_MSGS::SENDSCRIPTRESPONSE"))

(in-package "ROS")





(defclass tm_msgs::SendScriptRequest
  :super ros::object
  :slots (_id _script ))

(defmethod tm_msgs::SendScriptRequest
  (:init
   (&key
    ((:id __id) "")
    ((:script __script) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _script (string __script))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:script
   (&optional __script)
   (if __script (setq _script __script)) _script)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _script
    4 (length _script)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _script
       (write-long (length _script) s) (princ _script s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _script
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _script (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tm_msgs::SendScriptResponse
  :super ros::object
  :slots (_ok ))

(defmethod tm_msgs::SendScriptResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tm_msgs::SendScript
  :super ros::object
  :slots ())

(setf (get tm_msgs::SendScript :md5sum-) "f7c1ec2437ee83ce8a1998e89ee510ca")
(setf (get tm_msgs::SendScript :datatype-) "tm_msgs/SendScript")
(setf (get tm_msgs::SendScript :request) tm_msgs::SendScriptRequest)
(setf (get tm_msgs::SendScript :response) tm_msgs::SendScriptResponse)

(defmethod tm_msgs::SendScriptRequest
  (:response () (instance tm_msgs::SendScriptResponse :init)))

(setf (get tm_msgs::SendScriptRequest :md5sum-) "f7c1ec2437ee83ce8a1998e89ee510ca")
(setf (get tm_msgs::SendScriptRequest :datatype-) "tm_msgs/SendScriptRequest")
(setf (get tm_msgs::SendScriptRequest :definition-)
      "# request fields
# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT

string id
string script
---
#ok =   Correctness of the script.
bool ok

")

(setf (get tm_msgs::SendScriptResponse :md5sum-) "f7c1ec2437ee83ce8a1998e89ee510ca")
(setf (get tm_msgs::SendScriptResponse :datatype-) "tm_msgs/SendScriptResponse")
(setf (get tm_msgs::SendScriptResponse :definition-)
      "# request fields
# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT

string id
string script
---
#ok =   Correctness of the script.
bool ok

")



(provide :tm_msgs/SendScript "f7c1ec2437ee83ce8a1998e89ee510ca")


