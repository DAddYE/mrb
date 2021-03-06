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
  # :stack ::
  #   (MrbValue)
  # :mid ::
  #   (Integer)
  # :cioff ::
  #   (Integer)
  class REnv < FFI::Struct
    layout :tt, :mrb_vtype,
           :color, :uint,
           :flags, :uint,
           :c, RClass.by_ref,
           :gcnext, RBasic.by_ref,
           :stack, MrbValue.by_ref,
           :mid, :short,
           :cioff, :int
  end

end
