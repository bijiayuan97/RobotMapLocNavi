
(cl:in-package :asdf)

(defsystem "send_goals-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NaviServiceMessage" :depends-on ("_package_NaviServiceMessage"))
    (:file "_package_NaviServiceMessage" :depends-on ("_package"))
  ))