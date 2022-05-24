;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::AskItem)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'AskItem (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::ASKITEM")
  (make-package "TM_MSGS::ASKITEM"))
(unless (find-package "TM_MSGS::ASKITEMREQUEST")
  (make-package "TM_MSGS::ASKITEMREQUEST"))
(unless (find-package "TM_MSGS::ASKITEMRESPONSE")
  (make-package "TM_MSGS::ASKITEMRESPONSE"))

(in-package "ROS")





(defclass tm_msgs::AskItemRequest
  :super ros::object
  :slots (_id _item _wait_time ))

(defmethod tm_msgs::AskItemRequest
  (:init
   (&key
    ((:id __id) "")
    ((:item __item) "")
    ((:wait_time __wait_time) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _item (string __item))
   (setq _wait_time (float __wait_time))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:item
   (&optional __item)
   (if __item (setq _item __item)) _item)
  (:wait_time
   (&optional __wait_time)
   (if __wait_time (setq _wait_time __wait_time)) _wait_time)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _item
    4 (length _item)
    ;; float64 _wait_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _item
       (write-long (length _item) s) (princ _item s)
     ;; float64 _wait_time
       (sys::poke _wait_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _item
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _item (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _wait_time
     (setq _wait_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass tm_msgs::AskItemResponse
  :super ros::object
  :slots (_ok _id _value ))

(defmethod tm_msgs::AskItemResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:id __id) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _id (string __id))
   (setq _value (string __value))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string _id
    4 (length _id)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tm_msgs::AskItem
  :super ros::object
  :slots ())

(setf (get tm_msgs::AskItem :md5sum-) "b3422b8e3441a8072a0236251e9f0ee1")
(setf (get tm_msgs::AskItem :datatype-) "tm_msgs/AskItem")
(setf (get tm_msgs::AskItem :request) tm_msgs::AskItemRequest)
(setf (get tm_msgs::AskItem :response) tm_msgs::AskItemResponse)

(defmethod tm_msgs::AskItemRequest
  (:response () (instance tm_msgs::AskItemResponse :init)))

(setf (get tm_msgs::AskItemRequest :md5sum-) "b3422b8e3441a8072a0236251e9f0ee1")
(setf (get tm_msgs::AskItemRequest :datatype-) "tm_msgs/AskItemRequest")
(setf (get tm_msgs::AskItemRequest :definition-)
      "# Ask: request 'Read'
# id        : The discribtion you want to name. 
# item      : More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT
# wait_time : set wait time.
# More details please refer to the TM_Robot_Expression.pdf(version 1.76_6300) Chapter 7.4 TMSCT

string id
string item

float64 wait_time

---
# ok        : read status 
bool ok

# id        : The discribtion you want to name.
# value     : The value of asked item.
string id
string value

")

(setf (get tm_msgs::AskItemResponse :md5sum-) "b3422b8e3441a8072a0236251e9f0ee1")
(setf (get tm_msgs::AskItemResponse :datatype-) "tm_msgs/AskItemResponse")
(setf (get tm_msgs::AskItemResponse :definition-)
      "# Ask: request 'Read'
# id        : The discribtion you want to name. 
# item      : More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 7.4 TMSCT
# wait_time : set wait time.
# More details please refer to the TM_Robot_Expression.pdf(version 1.76_6300) Chapter 7.4 TMSCT

string id
string item

float64 wait_time

---
# ok        : read status 
bool ok

# id        : The discribtion you want to name.
# value     : The value of asked item.
string id
string value

")



(provide :tm_msgs/AskItem "b3422b8e3441a8072a0236251e9f0ee1")


