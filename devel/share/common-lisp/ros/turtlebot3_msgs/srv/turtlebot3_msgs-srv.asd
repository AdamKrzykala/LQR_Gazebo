
(cl:in-package :asdf)

(defsystem "turtlebot3_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CheckStatus" :depends-on ("_package_CheckStatus"))
    (:file "_package_CheckStatus" :depends-on ("_package"))
  ))