module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :tt ::
  #   (Symbol from `enum_mrb_vtype`)
  # :color ::
  #   (Integer)
  # :flags ::
  #   (Integer)
  # :c ::
  #   (RClass)
  # :gcnext ::
  #   (RBasic)
  # :iv ::
  #   (IvTbl)
  # :type ::
  #   (MrbDataType)
  # :data ::
  #   (FFI::Pointer(*Void))
  class RData < FFI::Struct
    layout :tt, :mrb_vtype,
           :color, :uint,
           :flags, :uint,
           :c, RClass.by_ref,
           :gcnext, RBasic.by_ref,
           :iv, IvTbl.by_ref,
           :type, MrbDataType.by_ref,
           :data, :pointer
  end

end
