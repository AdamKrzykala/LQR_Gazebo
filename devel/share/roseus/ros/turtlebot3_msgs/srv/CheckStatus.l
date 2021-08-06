;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_msgs::CheckStatus)
  (if (not (find-package "TURTLEBOT3_MSGS"))
    (make-package "TURTLEBOT3_MSGS"))
  (shadow 'CheckStatus (find-package "TURTLEBOT3_MSGS")))
(unless (find-package "TURTLEBOT3_MSGS::CHECKSTATUS")
  (make-package "TURTLEBOT3_MSGS::CHECKSTATUS"))
(unless (find-package "TURTLEBOT3_MSGS::CHECKSTATUSREQUEST")
  (make-package "TURTLEBOT3_MSGS::CHECKSTATUSREQUEST"))
(unless (find-package "TURTLEBOT3_MSGS::CHECKSTATUSRESPONSE")
  (make-package "TURTLEBOT3_MSGS::CHECKSTATUSRESPONSE"))

(in-package "ROS")





(defclass turtlebot3_msgs::CheckStatusRequest
  :super ros::object
  :slots (_robotID _request ))

(defmethod turtlebot3_msgs::CheckStatusRequest
  (:init
   (&key
    ((:robotID __robotID) "")
    ((:request __request) "")
    )
   (send-super :init)
   (setq _robotID (string __robotID))
   (setq _request (string __request))
   self)
  (:robotID
   (&optional __robotID)
   (if __robotID (setq _robotID __robotID)) _robotID)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; string _robotID
    4 (length _robotID)
    ;; string _request
    4 (length _request)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robotID
       (write-long (length _robotID) s) (princ _robotID s)
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robotID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robotID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtlebot3_msgs::CheckStatusResponse
  :super ros::object
  :slots (_success ))

(defmethod turtlebot3_msgs::CheckStatusResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlebot3_msgs::CheckStatus
  :super ros::object
  :slots ())

(setf (get turtlebot3_msgs::CheckStatus :md5sum-) "7ff597cbc0b70e34c1edffaf7514d72b")
(setf (get turtlebot3_msgs::CheckStatus :datatype-) "turtlebot3_msgs/CheckStatus")
(setf (get turtlebot3_msgs::CheckStatus :request) turtlebot3_msgs::CheckStatusRequest)
(setf (get turtlebot3_msgs::CheckStatus :response) turtlebot3_msgs::CheckStatusResponse)

(defmethod turtlebot3_msgs::CheckStatusRequest
  (:response () (instance turtlebot3_msgs::CheckStatusResponse :init)))

(setf (get turtlebot3_msgs::CheckStatusRequest :md5sum-) "7ff597cbc0b70e34c1edffaf7514d72b")
(setf (get turtlebot3_msgs::CheckStatusRequest :datatype-) "turtlebot3_msgs/CheckStatusRequest")
(setf (get turtlebot3_msgs::CheckStatusRequest :definition-)
      "string robotID
string request
---
bool success

")

(setf (get turtlebot3_msgs::CheckStatusResponse :md5sum-) "7ff597cbc0b70e34c1edffaf7514d72b")
(setf (get turtlebot3_msgs::CheckStatusResponse :datatype-) "turtlebot3_msgs/CheckStatusResponse")
(setf (get turtlebot3_msgs::CheckStatusResponse :definition-)
      "string robotID
string request
---
bool success

")



(provide :turtlebot3_msgs/CheckStatus "7ff597cbc0b70e34c1edffaf7514d72b")


