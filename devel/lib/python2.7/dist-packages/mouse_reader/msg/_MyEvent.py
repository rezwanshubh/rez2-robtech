# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mouse_reader/MyEvent.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MyEvent(genpy.Message):
  _md5sum = "2a533572c34f024512abad75ea2a34b4"
  _type = "mouse_reader/MyEvent"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 direction_x
int8 direction_y
int8 wheel_rotation

bool btn_right
bool btn_left
bool btn_middle
"""
  __slots__ = ['direction_x','direction_y','wheel_rotation','btn_right','btn_left','btn_middle']
  _slot_types = ['int8','int8','int8','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       direction_x,direction_y,wheel_rotation,btn_right,btn_left,btn_middle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MyEvent, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.direction_x is None:
        self.direction_x = 0
      if self.direction_y is None:
        self.direction_y = 0
      if self.wheel_rotation is None:
        self.wheel_rotation = 0
      if self.btn_right is None:
        self.btn_right = False
      if self.btn_left is None:
        self.btn_left = False
      if self.btn_middle is None:
        self.btn_middle = False
    else:
      self.direction_x = 0
      self.direction_y = 0
      self.wheel_rotation = 0
      self.btn_right = False
      self.btn_left = False
      self.btn_middle = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3b3B.pack(_x.direction_x, _x.direction_y, _x.wheel_rotation, _x.btn_right, _x.btn_left, _x.btn_middle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.direction_x, _x.direction_y, _x.wheel_rotation, _x.btn_right, _x.btn_left, _x.btn_middle,) = _struct_3b3B.unpack(str[start:end])
      self.btn_right = bool(self.btn_right)
      self.btn_left = bool(self.btn_left)
      self.btn_middle = bool(self.btn_middle)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3b3B.pack(_x.direction_x, _x.direction_y, _x.wheel_rotation, _x.btn_right, _x.btn_left, _x.btn_middle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.direction_x, _x.direction_y, _x.wheel_rotation, _x.btn_right, _x.btn_left, _x.btn_middle,) = _struct_3b3B.unpack(str[start:end])
      self.btn_right = bool(self.btn_right)
      self.btn_left = bool(self.btn_left)
      self.btn_middle = bool(self.btn_middle)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3b3B = struct.Struct("<3b3B")
