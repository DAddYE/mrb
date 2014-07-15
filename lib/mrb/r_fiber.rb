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
  # :cxt ::
  #   (MrbContext)
  class RFiber < FFI::Struct
    layout :tt, :mrb_vtype,
           :color, :uint,
           :flags, :uint,
           :c, RClass.by_ref,
           :gcnext, RBasic.by_ref,
           :cxt, MrbContext.by_ref
  end

end
