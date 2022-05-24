;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::SetIO)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'SetIO (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::SETIO")
  (make-package "TM_MSGS::SETIO"))
(unless (find-package "TM_MSGS::SETIOREQUEST")
  (make-package "TM_MSGS::SETIOREQUEST"))
(unless (find-package "TM_MSGS::SETIORESPONSE")
  (make-package "TM_MSGS::SETIORESPONSE"))

(in-package "ROS")





(intern "*MODULE_CONTROLBOX*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*MODULE_CONTROLBOX* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*MODULE_CONTROLBOX* 0)
(intern "*MODULE_ENDEFFECTOR*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*MODULE_ENDEFFECTOR* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*MODULE_ENDEFFECTOR* 1)
(intern "*TYPE_DIGITAL_IN*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*TYPE_DIGITAL_IN* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*TYPE_DIGITAL_IN* 0)
(intern "*TYPE_DIGITAL_OUT*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*TYPE_DIGITAL_OUT* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*TYPE_DIGITAL_OUT* 1)
(intern "*TYPE_INSTANT_DO*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*TYPE_INSTANT_DO* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*TYPE_INSTANT_DO* 2)
(intern "*TYPE_ANALOG_IN*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*TYPE_ANALOG_IN* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*TYPE_ANALOG_IN* 3)
(intern "*TYPE_ANALOG_OUT*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*TYPE_ANALOG_OUT* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*TYPE_ANALOG_OUT* 4)
(intern "*TYPE_INSTANT_AO*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*TYPE_INSTANT_AO* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*TYPE_INSTANT_AO* 5)
(intern "*STATE_OFF*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*STATE_OFF* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*STATE_OFF* 0)
(intern "*STATE_ON*" (find-package "TM_MSGS::SETIOREQUEST"))
(shadow '*STATE_ON* (find-package "TM_MSGS::SETIOREQUEST"))
(defconstant tm_msgs::SetIORequest::*STATE_ON* 1)
(defclass tm_msgs::SetIORequest
  :super ros::object
  :slots (_module _type _pin _state ))

(defmethod tm_msgs::SetIORequest
  (:init
   (&key
    ((:module __module) 0)
    ((:type __type) 0)
    ((:pin __pin) 0)
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _module (round __module))
   (setq _type (round __type))
   (setq _pin (round __pin))
   (setq _state (float __state))
   self)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _module
    1
    ;; int8 _type
    1
    ;; int8 _pin
    1
    ;; float32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _module
       (write-byte _module s)
     ;; int8 _type
       (write-byte _type s)
     ;; int8 _pin
       (write-byte _pin s)
     ;; float32 _state
       (sys::poke _state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _module
     (setq _module (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _module 127) (setq _module (- _module 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; float32 _state
     (setq _state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tm_msgs::SetIOResponse
  :super ros::object
  :slots (_ok ))

(defmethod tm_msgs::SetIOResponse
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

(defclass tm_msgs::SetIO
  :super ros::object
  :slots ())

(setf (get tm_msgs::SetIO :md5sum-) "ee6cbf90dc535c1e6656dd67997a2cd6")
(setf (get tm_msgs::SetIO :datatype-) "tm_msgs/SetIO")
(setf (get tm_msgs::SetIO :request) tm_msgs::SetIORequest)
(setf (get tm_msgs::SetIO :response) tm_msgs::SetIOResponse)

(defmethod tm_msgs::SetIORequest
  (:response () (instance tm_msgs::SetIOResponse :init)))

(setf (get tm_msgs::SetIORequest :md5sum-) "ee6cbf90dc535c1e6656dd67997a2cd6")
(setf (get tm_msgs::SetIORequest :datatype-) "tm_msgs/SetIORequest")
(setf (get tm_msgs::SetIORequest :definition-)
      "# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 6.5 IO
int8 MODULE_CONTROLBOX = 0
int8 MODULE_ENDEFFECTOR = 1

int8 TYPE_DIGITAL_IN = 0
int8 TYPE_DIGITAL_OUT = 1
int8 TYPE_INSTANT_DO = 2
int8 TYPE_ANALOG_IN = 3
int8 TYPE_ANALOG_OUT = 4
int8 TYPE_INSTANT_AO = 5

int8 STATE_OFF = 0
int8 STATE_ON = 1

# request fields
int8 module
int8 type
int8 pin
float32 state #STATE_OFF or STATE_ON value, or other value (if type expressed in a specific control module)
---
#ok= set function status
bool ok

")

(setf (get tm_msgs::SetIOResponse :md5sum-) "ee6cbf90dc535c1e6656dd67997a2cd6")
(setf (get tm_msgs::SetIOResponse :datatype-) "tm_msgs/SetIOResponse")
(setf (get tm_msgs::SetIOResponse :definition-)
      "# More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 6.5 IO
int8 MODULE_CONTROLBOX = 0
int8 MODULE_ENDEFFECTOR = 1

int8 TYPE_DIGITAL_IN = 0
int8 TYPE_DIGITAL_OUT = 1
int8 TYPE_INSTANT_DO = 2
int8 TYPE_ANALOG_IN = 3
int8 TYPE_ANALOG_OUT = 4
int8 TYPE_INSTANT_AO = 5

int8 STATE_OFF = 0
int8 STATE_ON = 1

# request fields
int8 module
int8 type
int8 pin
float32 state #STATE_OFF or STATE_ON value, or other value (if type expressed in a specific control module)
---
#ok= set function status
bool ok

")



(provide :tm_msgs/SetIO "ee6cbf90dc535c1e6656dd67997a2cd6")


