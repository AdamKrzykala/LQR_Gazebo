; Auto-generated. Do not edit!


(cl:in-package turtlebot3_msgs-srv)


;//! \htmlinclude CheckStatus-request.msg.html

(cl:defclass <CheckStatus-request> (roslisp-msg-protocol:ros-message)
  ((robotID
    :reader robotID
    :initarg :robotID
    :type cl:string
    :initform "")
   (request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass CheckStatus-request (<CheckStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_msgs-srv:<CheckStatus-request> is deprecated: use turtlebot3_msgs-srv:CheckStatus-request instead.")))

(cl:ensure-generic-function 'robotID-val :lambda-list '(m))
(cl:defmethod robotID-val ((m <CheckStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:robotID-val is deprecated.  Use turtlebot3_msgs-srv:robotID instead.")
  (robotID m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <CheckStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:request-val is deprecated.  Use turtlebot3_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckStatus-request>) ostream)
  "Serializes a message object of type '<CheckStatus-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotID))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckStatus-request>) istream)
  "Deserializes a message object of type '<CheckStatus-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckStatus-request>)))
  "Returns string type for a service object of type '<CheckStatus-request>"
  "turtlebot3_msgs/CheckStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStatus-request)))
  "Returns string type for a service object of type 'CheckStatus-request"
  "turtlebot3_msgs/CheckStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckStatus-request>)))
  "Returns md5sum for a message object of type '<CheckStatus-request>"
  "7ff597cbc0b70e34c1edffaf7514d72b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckStatus-request)))
  "Returns md5sum for a message object of type 'CheckStatus-request"
  "7ff597cbc0b70e34c1edffaf7514d72b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckStatus-request>)))
  "Returns full string definition for message of type '<CheckStatus-request>"
  (cl:format cl:nil "string robotID~%string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckStatus-request)))
  "Returns full string definition for message of type 'CheckStatus-request"
  (cl:format cl:nil "string robotID~%string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckStatus-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robotID))
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckStatus-request
    (cl:cons ':robotID (robotID msg))
    (cl:cons ':request (request msg))
))
;//! \htmlinclude CheckStatus-response.msg.html

(cl:defclass <CheckStatus-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckStatus-response (<CheckStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_msgs-srv:<CheckStatus-response> is deprecated: use turtlebot3_msgs-srv:CheckStatus-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CheckStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_msgs-srv:success-val is deprecated.  Use turtlebot3_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckStatus-response>) ostream)
  "Serializes a message object of type '<CheckStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckStatus-response>) istream)
  "Deserializes a message object of type '<CheckStatus-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckStatus-response>)))
  "Returns string type for a service object of type '<CheckStatus-response>"
  "turtlebot3_msgs/CheckStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStatus-response)))
  "Returns string type for a service object of type 'CheckStatus-response"
  "turtlebot3_msgs/CheckStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckStatus-response>)))
  "Returns md5sum for a message object of type '<CheckStatus-response>"
  "7ff597cbc0b70e34c1edffaf7514d72b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckStatus-response)))
  "Returns md5sum for a message object of type 'CheckStatus-response"
  "7ff597cbc0b70e34c1edffaf7514d72b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckStatus-response>)))
  "Returns full string definition for message of type '<CheckStatus-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckStatus-response)))
  "Returns full string definition for message of type 'CheckStatus-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckStatus-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckStatus)))
  'CheckStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckStatus)))
  'CheckStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStatus)))
  "Returns string type for a service object of type '<CheckStatus>"
  "turtlebot3_msgs/CheckStatus")