;; Auto-generated. Do not edit!


(when (boundp 'send_goals::NaviServiceMessage)
  (if (not (find-package "SEND_GOALS"))
    (make-package "SEND_GOALS"))
  (shadow 'NaviServiceMessage (find-package "SEND_GOALS")))
(unless (find-package "SEND_GOALS::NAVISERVICEMESSAGE")
  (make-package "SEND_GOALS::NAVISERVICEMESSAGE"))
(unless (find-package "SEND_GOALS::NAVISERVICEMESSAGEREQUEST")
  (make-package "SEND_GOALS::NAVISERVICEMESSAGEREQUEST"))
(unless (find-package "SEND_GOALS::NAVISERVICEMESSAGERESPONSE")
  (make-package "SEND_GOALS::NAVISERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass send_goals::NaviServiceMessageRequest
  :super ros::object
  :slots (_label ))

(defmethod send_goals::NaviServiceMessageRequest
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

(defclass send_goals::NaviServiceMessageResponse
  :super ros::object
  :slots (_navigation_successfull _message ))

(defmethod send_goals::NaviServiceMessageResponse
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

(defclass send_goals::NaviServiceMessage
  :super ros::object
  :slots ())

(setf (get send_goals::NaviServiceMessage :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get send_goals::NaviServiceMessage :datatype-) "send_goals/NaviServiceMessage")
(setf (get send_goals::NaviServiceMessage :request) send_goals::NaviServiceMessageRequest)
(setf (get send_goals::NaviServiceMessage :response) send_goals::NaviServiceMessageResponse)

(defmethod send_goals::NaviServiceMessageRequest
  (:response () (instance send_goals::NaviServiceMessageResponse :init)))

(setf (get send_goals::NaviServiceMessageRequest :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get send_goals::NaviServiceMessageRequest :datatype-) "send_goals/NaviServiceMessageRequest")
(setf (get send_goals::NaviServiceMessageRequest :definition-)
      "# request
string label
---
#response
bool navigation_successfull
string message
")

(setf (get send_goals::NaviServiceMessageResponse :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get send_goals::NaviServiceMessageResponse :datatype-) "send_goals/NaviServiceMessageResponse")
(setf (get send_goals::NaviServiceMessageResponse :definition-)
      "# request
string label
---
#response
bool navigation_successfull
string message
")



(provide :send_goals/NaviServiceMessage "920ca5ca095e1b5230fc32da338a974c")


