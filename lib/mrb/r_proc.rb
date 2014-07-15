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
  # :body ::
  #   (RProcBody)
  # :target_class ::
  #   (RClass)
  # :env ::
  #   (REnv)
  class RProc < FFI::Struct
    layout :tt, :mrb_vtype,
           :color, :uint,
           :flags, :uint,
           :c, RClass.by_ref,
           :gcnext, RBasic.by_ref,
           :body, RProcBody.by_value,
           :target_class, RClass.by_ref,
           :env, REnv.by_ref
  end

end
