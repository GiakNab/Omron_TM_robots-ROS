;; Auto-generated. Do not edit!


(when (boundp 'tm_msgs::WriteItem)
  (if (not (find-package "TM_MSGS"))
    (make-package "TM_MSGS"))
  (shadow 'WriteItem (find-package "TM_MSGS")))
(unless (find-package "TM_MSGS::WRITEITEM")
  (make-package "TM_MSGS::WRITEITEM"))
(unless (find-package "TM_MSGS::WRITEITEMREQUEST")
  (make-package "TM_MSGS::WRITEITEMREQUEST"))
(unless (find-package "TM_MSGS::WRITEITEMRESPONSE")
  (make-package "TM_MSGS::WRITEITEMRESPONSE"))

(in-package "ROS")





(defclass tm_msgs::WriteItemRequest
  :super ros::object
  :slots (_id _item _value ))

(defmethod tm_msgs::WriteItemRequest
  (:init
   (&key
    ((:id __id) "")
    ((:item __item) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _item (string __item))
   (setq _value (string __value))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:item
   (&optional __item)
   (if __item (setq _item __item)) _item)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _item
    4 (length _item)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _item
       (write-long (length _item) s) (princ _item s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _item
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _item (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tm_msgs::WriteItemResponse
  :super ros::object
  :slots (_ok ))

(defmethod tm_msgs::WriteItemResponse
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

(defclass tm_msgs::WriteItem
  :super ros::object
  :slots ())

(setf (get tm_msgs::WriteItem :md5sum-) "200255964745879fc25ca887f157e1b3")
(setf (get tm_msgs::WriteItem :datatype-) "tm_msgs/WriteItem")
(setf (get tm_msgs::WriteItem :request) tm_msgs::WriteItemRequest)
(setf (get tm_msgs::WriteItem :response) tm_msgs::WriteItemResponse)

(defmethod tm_msgs::WriteItemRequest
  (:response () (instance tm_msgs::WriteItemResponse :init)))

(setf (get tm_msgs::WriteItemRequest :md5sum-) "200255964745879fc25ca887f157e1b3")
(setf (get tm_msgs::WriteItemRequest :datatype-) "tm_msgs/WriteItemRequest")
(setf (get tm_msgs::WriteItemRequest :definition-)
      "# 'Write'
# id        : name
# item/value: More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 9.3 svr_write

string id
string item
string value
---
#ok =   write status
bool ok
")

(setf (get tm_msgs::WriteItemResponse :md5sum-) "200255964745879fc25ca887f157e1b3")
(setf (get tm_msgs::WriteItemResponse :datatype-) "tm_msgs/WriteItemResponse")
(setf (get tm_msgs::WriteItemResponse :definition-)
      "# 'Write'
# id        : name
# item/value: More details please refer to the TM_Robot_Expression.pdf(1.76 rev1.00) Chapter 9.3 svr_write

string id
string item
string value
---
#ok =   write status
bool ok
")



(provide :tm_msgs/WriteItem "200255964745879fc25ca887f157e1b3")


