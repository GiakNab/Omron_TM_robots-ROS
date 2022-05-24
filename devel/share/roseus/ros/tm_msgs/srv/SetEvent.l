;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::SetEvent)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'SetEvent (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::SETEVENT")
  (make-package "TM_MSGS::SETEVENT"))
(unless (find-package "TM_MSGS::SETEVENTREQUEST")
  (make-package "TM_MSGS::SETEVENTREQUEST"))
(unless (find-package "TM_MSGS::SETEVENTRESPONSE")
  (make-package "TM_MSGS::SETEVENTRESPONSE"))

(in-package "ROS")





(intern "*TAG*" (find-package "TM_MSGS::SETEVENTREQUEST"))
(shadow '*TAG* (find-package "TM_MSGS::SETEVENTREQUEST"))
(defconstant tm_msgs::SetEventRequest::*TAG* 1)
(intern "*WAIT_TAG*" (find-package "TM_MSGS::SETEVENTREQUEST"))
(shadow '*WAIT_TAG* (find-package "TM_MSGS::SETEVENTREQUEST"))
(defconstant tm_msgs::SetEventRequest::*WAIT_TAG* 2)
(intern "*STOP*" (find-package "TM_MSGS::SETEVENTREQUEST"))
(shadow '*STOP* (find-package "TM_MSGS::SETEVENTREQUEST"))
(defconstant tm_msgs::SetEventRequest::*STOP* 11)
(intern "*PAUSE*" (find-package "TM_MSGS::SETEVENTREQUEST"))
(shadow '*PAUSE* (find-package "TM_MSGS::SETEVENTREQUEST"))
(defconstant tm_msgs::SetEventRequest::*PAUSE* 12)
(intern "*RESUME*" (find-package "TM_MSGS::SETEVENTREQUEST"))
(shadow '*RESUME* (find-package "TM_MSGS::SETEVENTREQUEST"))
(defconstant tm_msgs::SetEventRequest::*RESUME* 13)
(intern "*EXIT*" (find-package "TM_MSGS::SETEVENTREQUEST"))
(shadow '*EXIT* (find-package "TM_MSGS::SETEVENTREQUEST"))
(defconstant tm_msgs::SetEventRequest::*EXIT* -1)
(defclass tm_msgs::SetEventRequest
  :super ros::object
  :slots (_func _arg0 _arg1 ))

(defmethod tm_msgs::SetEventRequest
  (:init
   (&key
    ((:func __func) 0)
    ((:arg0 __arg0) 0)
    ((:arg1 __arg1) 0)
    )
   (send-super :init)
   (setq _func (round __func))
   (setq _arg0 (round __arg0))
   (setq _arg1 (round __arg1))
   self)
  (:func
   (&optional __func)
   (if __func (setq _func __func)) _func)
  (:arg0
   (&optional __arg0)
   (if __arg0 (setq _arg0 __arg0)) _arg0)
  (:arg1
   (&optional __arg1)
   (if __arg1 (setq _arg1 __arg1)) _arg1)
  (:serialization-length
   ()
   (+
    ;; int8 _func
    1
    ;; int8 _arg0
    1
    ;; int8 _arg1
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _func
       (write-byte _func s)
     ;; int8 _arg0
       (write-byte _arg0 s)
     ;; int8 _arg1
       (write-byte _arg1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _func
     (setq _func (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _func 127) (setq _func (- _func 256)))
   ;; int8 _arg0
     (setq _arg0 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arg0 127) (setq _arg0 (- _arg0 256)))
   ;; int8 _arg1
     (setq _arg1 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arg1 127) (setq _arg1 (- _arg1 256)))
   ;;
   self)
  )

(defclass tm_msgs::SetEventResponse
  :super ros::object
  :slots (_ok ))

(defmethod tm_msgs::SetEventResponse
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

(defclass tm_msgs::SetEvent
  :super ros::object
  :slots ())

(setf (get tm_msgs::SetEvent :md5sum-) "62b75d8dc56191f201e7699fc646eb67")
(setf (get tm_msgs::SetEvent :datatype-) "tm_msgs/SetEvent")
(setf (get tm_msgs::SetEvent :request) tm_msgs::SetEventRequest)
(setf (get tm_msgs::SetEvent :response) tm_msgs::SetEventResponse)

(defmethod tm_msgs::SetEventRequest
  (:response () (instance tm_msgs::SetEventResponse :init)))

(setf (get tm_msgs::SetEventRequest :md5sum-) "62b75d8dc56191f201e7699fc646eb67")
(setf (get tm_msgs::SetEventRequest :datatype-) "tm_msgs/SetEventRequest")
(setf (get tm_msgs::SetEventRequest :definition-)
      "# More details please refer to the tm_ros_service.cpp/set_event function.
int8 TAG = 1
int8 WAIT_TAG = 2
int8 STOP = 11
int8 PAUSE = 12
int8 RESUME = 13

int8 EXIT = -1

int8 func
int8 arg0 # if fun is TAG or WAIT_TAG, arg0 is timeout in ms
int8 arg1 # if fun is TAG or WAIT_TAG, arg1 is id
---
#ok == complete status
bool ok
# int8 rv

")

(setf (get tm_msgs::SetEventResponse :md5sum-) "62b75d8dc56191f201e7699fc646eb67")
(setf (get tm_msgs::SetEventResponse :datatype-) "tm_msgs/SetEventResponse")
(setf (get tm_msgs::SetEventResponse :definition-)
      "# More details please refer to the tm_ros_service.cpp/set_event function.
int8 TAG = 1
int8 WAIT_TAG = 2
int8 STOP = 11
int8 PAUSE = 12
int8 RESUME = 13

int8 EXIT = -1

int8 func
int8 arg0 # if fun is TAG or WAIT_TAG, arg0 is timeout in ms
int8 arg1 # if fun is TAG or WAIT_TAG, arg1 is id
---
#ok == complete status
bool ok
# int8 rv

")



(provide :tm_msgs/SetEvent "62b75d8dc56191f201e7699fc646eb67")


