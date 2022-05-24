;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::ConnectTM)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'ConnectTM (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::CONNECTTM")
  (make-package "TM_MSGS::CONNECTTM"))
(unless (find-package "TM_MSGS::CONNECTTMREQUEST")
  (make-package "TM_MSGS::CONNECTTMREQUEST"))
(unless (find-package "TM_MSGS::CONNECTTMRESPONSE")
  (make-package "TM_MSGS::CONNECTTMRESPONSE"))

(in-package "ROS")





(intern "*TMSVR*" (find-package "TM_MSGS::CONNECTTMREQUEST"))
(shadow '*TMSVR* (find-package "TM_MSGS::CONNECTTMREQUEST"))
(defconstant tm_msgs::ConnectTMRequest::*TMSVR* 0)
(intern "*TMSCT*" (find-package "TM_MSGS::CONNECTTMREQUEST"))
(shadow '*TMSCT* (find-package "TM_MSGS::CONNECTTMREQUEST"))
(defconstant tm_msgs::ConnectTMRequest::*TMSCT* 1)
(defclass tm_msgs::ConnectTMRequest
  :super ros::object
  :slots (_server _connect _reconnect _timeout _timeval ))

(defmethod tm_msgs::ConnectTMRequest
  (:init
   (&key
    ((:server __server) 0)
    ((:connect __connect) nil)
    ((:reconnect __reconnect) nil)
    ((:timeout __timeout) 0.0)
    ((:timeval __timeval) 0.0)
    )
   (send-super :init)
   (setq _server (round __server))
   (setq _connect __connect)
   (setq _reconnect __reconnect)
   (setq _timeout (float __timeout))
   (setq _timeval (float __timeval))
   self)
  (:server
   (&optional __server)
   (if __server (setq _server __server)) _server)
  (:connect
   (&optional __connect)
   (if __connect (setq _connect __connect)) _connect)
  (:reconnect
   (&optional __reconnect)
   (if __reconnect (setq _reconnect __reconnect)) _reconnect)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:timeval
   (&optional __timeval)
   (if __timeval (setq _timeval __timeval)) _timeval)
  (:serialization-length
   ()
   (+
    ;; int8 _server
    1
    ;; bool _connect
    1
    ;; bool _reconnect
    1
    ;; float64 _timeout
    8
    ;; float64 _timeval
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _server
       (write-byte _server s)
     ;; bool _connect
       (if _connect (write-byte -1 s) (write-byte 0 s))
     ;; bool _reconnect
       (if _reconnect (write-byte -1 s) (write-byte 0 s))
     ;; float64 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timeval
       (sys::poke _timeval (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _server
     (setq _server (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _server 127) (setq _server (- _server 256)))
   ;; bool _connect
     (setq _connect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reconnect
     (setq _reconnect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _timeout
     (setq _timeout (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timeval
     (setq _timeval (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass tm_msgs::ConnectTMResponse
  :super ros::object
  :slots (_ok ))

(defmethod tm_msgs::ConnectTMResponse
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

(defclass tm_msgs::ConnectTM
  :super ros::object
  :slots ())

(setf (get tm_msgs::ConnectTM :md5sum-) "0d50ce933552e4d5e66858757bce799c")
(setf (get tm_msgs::ConnectTM :datatype-) "tm_msgs/ConnectTM")
(setf (get tm_msgs::ConnectTM :request) tm_msgs::ConnectTMRequest)
(setf (get tm_msgs::ConnectTM :response) tm_msgs::ConnectTMResponse)

(defmethod tm_msgs::ConnectTMRequest
  (:response () (instance tm_msgs::ConnectTMResponse :init)))

(setf (get tm_msgs::ConnectTMRequest :md5sum-) "0d50ce933552e4d5e66858757bce799c")
(setf (get tm_msgs::ConnectTMRequest :datatype-) "tm_msgs/ConnectTMRequest")
(setf (get tm_msgs::ConnectTMRequest :definition-)
      "#float64 DEFAULT_TIMEOUT = 1.0
#float64 DEFAULT_TIMEVAL = 3.0
#server :   TMSVR, TMSCT
#connect/reconnect : In Connection phase. 
#connect    == true. Keeping connect function
#reconnect  == true. If connect funcition fail, It will reconnect.

int8 TMSVR = 0
int8 TMSCT = 1

int8 server
bool connect
bool reconnect
float64 timeout
float64 timeval
---
#ok :   connect status
bool ok

")

(setf (get tm_msgs::ConnectTMResponse :md5sum-) "0d50ce933552e4d5e66858757bce799c")
(setf (get tm_msgs::ConnectTMResponse :datatype-) "tm_msgs/ConnectTMResponse")
(setf (get tm_msgs::ConnectTMResponse :definition-)
      "#float64 DEFAULT_TIMEOUT = 1.0
#float64 DEFAULT_TIMEVAL = 3.0
#server :   TMSVR, TMSCT
#connect/reconnect : In Connection phase. 
#connect    == true. Keeping connect function
#reconnect  == true. If connect funcition fail, It will reconnect.

int8 TMSVR = 0
int8 TMSCT = 1

int8 server
bool connect
bool reconnect
float64 timeout
float64 timeval
---
#ok :   connect status
bool ok

")



(provide :tm_msgs/ConnectTM "0d50ce933552e4d5e66858757bce799c")


