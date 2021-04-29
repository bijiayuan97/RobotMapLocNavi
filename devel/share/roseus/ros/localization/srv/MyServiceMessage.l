;; Auto-generated. Do not edit!


(when (boundp 'localization::MyServiceMessage)
  (if (not (find-package "LOCALIZATION"))
    (make-package "LOCALIZATION"))
  (shadow 'MyServiceMessage (find-package "LOCALIZATION")))
(unless (find-package "LOCALIZATION::MYSERVICEMESSAGE")
  (make-package "LOCALIZATION::MYSERVICEMESSAGE"))
(unless (find-package "LOCALIZATION::MYSERVICEMESSAGEREQUEST")
  (make-package "LOCALIZATION::MYSERVICEMESSAGEREQUEST"))
(unless (find-package "LOCALIZATION::MYSERVICEMESSAGERESPONSE")
  (make-package "LOCALIZATION::MYSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass localization::MyServiceMessageRequest
  :super ros::object
  :slots (_label ))

(defmethod localization::MyServiceMessageRequest
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass localization::MyServiceMessageResponse
  :super ros::object
  :slots (_navigation_successfull _message ))

(defmethod localization::MyServiceMessageResponse
  (:init
   (&key
    ((:navigation_successfull __navigation_successfull) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _navigation_successfull __navigation_successfull)
   (setq _message (string __message))
   self)
  (:navigation_successfull
   (&optional __navigation_successfull)
   (if __navigation_successfull (setq _navigation_successfull __navigation_successfull)) _navigation_successfull)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _navigation_successfull
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _navigation_successfull
       (if _navigation_successfull (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _navigation_successfull
     (setq _navigation_successfull (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass localization::MyServiceMessage
  :super ros::object
  :slots ())

(setf (get localization::MyServiceMessage :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get localization::MyServiceMessage :datatype-) "localization/MyServiceMessage")
(setf (get localization::MyServiceMessage :request) localization::MyServiceMessageRequest)
(setf (get localization::MyServiceMessage :response) localization::MyServiceMessageResponse)

(defmethod localization::MyServiceMessageRequest
  (:response () (instance localization::MyServiceMessageResponse :init)))

(setf (get localization::MyServiceMessageRequest :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get localization::MyServiceMessageRequest :datatype-) "localization/MyServiceMessageRequest")
(setf (get localization::MyServiceMessageRequest :definition-)
      "# request
string label
---
#response
bool navigation_successfull
string message
")

(setf (get localization::MyServiceMessageResponse :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get localization::MyServiceMessageResponse :datatype-) "localization/MyServiceMessageResponse")
(setf (get localization::MyServiceMessageResponse :definition-)
      "# request
string label
---
#response
bool navigation_successfull
string message
")



(provide :localization/MyServiceMessage "920ca5ca095e1b5230fc32da338a974c")


