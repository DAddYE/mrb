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
  class RObject < FFI::Struct
    layout :tt, :mrb_vtype,
           :color, :uint,
           :flags, :uint,
           :c, RClass.by_ref,
           :gcnext, RBasic.by_ref,
           :iv, IvTbl.by_ref
  end

end
