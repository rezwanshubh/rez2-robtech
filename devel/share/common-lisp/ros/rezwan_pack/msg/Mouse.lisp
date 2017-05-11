; Auto-generated. Do not edit!


(cl:in-package rezwan_pack-msg)


;//! \htmlinclude Mouse.msg.html

(cl:defclass <Mouse> (roslisp-msg-protocol:ros-message)
  ((direction_x
    :reader direction_x
    :initarg :direction_x
    :type cl:integer
    :initform 0)
   (direction_y
    :reader direction_y
    :initarg :direction_y
    :type cl:integer
    :initform 0)
   (wheel_rotation
    :reader wheel_rotation
    :initarg :wheel_rotation
    :type cl:integer
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

(cl:defclass Mouse (<Mouse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mouse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mouse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rezwan_pack-msg:<Mouse> is deprecated: use rezwan_pack-msg:Mouse instead.")))

(cl:ensure-generic-function 'direction_x-val :lambda-list '(m))
(cl:defmethod direction_x-val ((m <Mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:direction_x-val is deprecated.  Use rezwan_pack-msg:direction_x instead.")
  (direction_x m))

(cl:ensure-generic-function 'direction_y-val :lambda-list '(m))
(cl:defmethod direction_y-val ((m <Mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:direction_y-val is deprecated.  Use rezwan_pack-msg:direction_y instead.")
  (direction_y m))

(cl:ensure-generic-function 'wheel_rotation-val :lambda-list '(m))
(cl:defmethod wheel_rotation-val ((m <Mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:wheel_rotation-val is deprecated.  Use rezwan_pack-msg:wheel_rotation instead.")
  (wheel_rotation m))

(cl:ensure-generic-function 'btn_right-val :lambda-list '(m))
(cl:defmethod btn_right-val ((m <Mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:btn_right-val is deprecated.  Use rezwan_pack-msg:btn_right instead.")
  (btn_right m))

(cl:ensure-generic-function 'btn_left-val :lambda-list '(m))
(cl:defmethod btn_left-val ((m <Mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:btn_left-val is deprecated.  Use rezwan_pack-msg:btn_left instead.")
  (btn_left m))

(cl:ensure-generic-function 'btn_middle-val :lambda-list '(m))
(cl:defmethod btn_middle-val ((m <Mouse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rezwan_pack-msg:btn_middle-val is deprecated.  Use rezwan_pack-msg:btn_middle instead.")
  (btn_middle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mouse>) ostream)
  "Serializes a message object of type '<Mouse>"
  (cl:let* ((signed (cl:slot-value msg 'direction_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel_rotation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn_middle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mouse>) istream)
  "Deserializes a message object of type '<Mouse>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction_x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction_y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_rotation) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'btn_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'btn_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'btn_middle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mouse>)))
  "Returns string type for a message object of type '<Mouse>"
  "rezwan_pack/Mouse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mouse)))
  "Returns string type for a message object of type 'Mouse"
  "rezwan_pack/Mouse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mouse>)))
  "Returns md5sum for a message object of type '<Mouse>"
  "fd373f94bff457170b2317d79cd8865a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mouse)))
  "Returns md5sum for a message object of type 'Mouse"
  "fd373f94bff457170b2317d79cd8865a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mouse>)))
  "Returns full string definition for message of type '<Mouse>"
  (cl:format cl:nil "int64 direction_x~%int64 direction_y~%int64 wheel_rotation~%~%bool btn_right~%bool btn_left~%bool btn_middle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mouse)))
  "Returns full string definition for message of type 'Mouse"
  (cl:format cl:nil "int64 direction_x~%int64 direction_y~%int64 wheel_rotation~%~%bool btn_right~%bool btn_left~%bool btn_middle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mouse>))
  (cl:+ 0
     8
     8
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mouse>))
  "Converts a ROS message object to a list"
  (cl:list 'Mouse
    (cl:cons ':direction_x (direction_x msg))
    (cl:cons ':direction_y (direction_y msg))
    (cl:cons ':wheel_rotation (wheel_rotation msg))
    (cl:cons ':btn_right (btn_right msg))
    (cl:cons ':btn_left (btn_left msg))
    (cl:cons ':btn_middle (btn_middle msg))
))
