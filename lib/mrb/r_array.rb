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
  # :len ::
  #   (Integer)
  # :aux ::
  #   (RArrayAux)
  # :ptr ::
  #   (MrbValue)
  class RArray < FFI::Struct
    layout :tt, :mrb_vtype,
           :color, :uint,
           :flags, :uint,
           :c, RClass.by_ref,
           :gcnext, RBasic.by_ref,
           :len, :int,
           :aux, RArrayAux.by_value,
           :ptr, MrbValue.by_ref
  end

end
