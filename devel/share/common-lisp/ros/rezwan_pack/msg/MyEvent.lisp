; Auto-generated. Do not edit!


(cl:in-package rezwan_pack-msg)


;//! \htmlinclude MyEvent.msg.html

(cl:defclass <MyEvent> (roslisp-msg-protocol:ros-message)
  ((direction_x
    :reader direction_x
    :initarg :direction_x
    :type cl:fixnum
    :initform 0)
   (direction_y
    :reader direction_y
    :initarg :direction_y
    :type cl:fixnum
    :initform 0)
   (wheel_rotation
    :reader wheel_rotation
    :initarg :wheel_rotation
    :type cl:fixnum
    :initform 0)
   (btn_right
    :reader btn_right
    :initarg :btn_right
    :type cl:boolean
    :initform cl:nil)
   (btn_left
    :reader btn_left
    :initarg :btn_left
    :type cl:boolean
    :initform cl:nil)
   (btn_middle
    :reader btn_middle
    :initarg :btn_middle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MyEvent (<MyEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rezwan_pack-msg:<MyEvent> is deprecated: use rezwan_pack-msg:MyEvent instead.")))

(cl:ensure-generic-function 'direction_x-val :lambda-list '(m))
(cl:defmethod direction_x-val ((m <MyEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:direction_x-val is deprecated.  Use rezwan_pack-msg:direction_x instead.")
  (direction_x m))

(cl:ensure-generic-function 'direction_y-val :lambda-list '(m))
(cl:defmethod direction_y-val ((m <MyEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:direction_y-val is deprecated.  Use rezwan_pack-msg:direction_y instead.")
  (direction_y m))

(cl:ensure-generic-function 'wheel_rotation-val :lambda-list '(m))
(cl:defmethod wheel_rotation-val ((m <MyEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:wheel_rotation-val is deprecated.  Use rezwan_pack-msg:wheel_rotation instead.")
  (wheel_rotation m))

(cl:ensure-generic-function 'btn_right-val :lambda-list '(m))
(cl:defmethod btn_right-val ((m <MyEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:btn_right-val is deprecated.  Use rezwan_pack-msg:btn_right instead.")
  (btn_right m))

(cl:ensure-generic-function 'btn_left-val :lambda-list '(m))
(cl:defmethod btn_left-val ((m <MyEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:btn_left-val is deprecated.  Use rezwan_pack-msg:btn_left instead.")
  (btn_left m))

(cl:ensure-generic-function 'btn_middle-val :lambda-list '(m))
(cl:defmethod btn_middle-val ((m <MyEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:btn_middle-val is deprecated.  Use rezwan_pack-msg:btn_middle instead.")
  (btn_middle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyEvent>) ostream)
  "Serializes a message object of type '<MyEvent>"
  (cl:let* ((signed (cl:slot-value msg 'direction_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel_rotation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn_middle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyEvent>) istream)
  "Deserializes a message object of type '<MyEvent>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction_x) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction_y) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_rotation) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'btn_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'btn_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'btn_middle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyEvent>)))
  "Returns string type for a message object of type '<MyEvent>"
  "rezwan_pack/MyEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyEvent)))
  "Returns string type for a message object of type 'MyEvent"
  "rezwan_pack/MyEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyEvent>)))
  "Returns md5sum for a message object of type '<MyEvent>"
  "2a533572c34f024512abad75ea2a34b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyEvent)))
  "Returns md5sum for a message object of type 'MyEvent"
  "2a533572c34f024512abad75ea2a34b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyEvent>)))
  "Returns full string definition for message of type '<MyEvent>"
  (cl:format cl:nil "int8 direction_x~%int8 direction_y~%int8 wheel_rotation~%~%bool btn_right~%bool btn_left~%bool btn_middle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyEvent)))
  "Returns full string definition for message of type 'MyEvent"
  (cl:format cl:nil "int8 direction_x~%int8 direction_y~%int8 wheel_rotation~%~%bool btn_right~%bool btn_left~%bool btn_middle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyEvent>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'MyEvent
    (cl:cons ':direction_x (direction_x msg))
    (cl:cons ':direction_y (direction_y msg))
    (cl:cons ':wheel_rotation (wheel_rotation msg))
    (cl:cons ':btn_right (btn_right msg))
    (cl:cons ':btn_left (btn_left msg))
    (cl:cons ':btn_middle (btn_middle msg))
))
