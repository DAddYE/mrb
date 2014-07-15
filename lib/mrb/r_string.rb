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
  #   (RStringAux)
  # :ptr ::
  #   (String)
  class RString < FFI::Struct
    layout :tt, :mrb_vtype,
           :color, :uint,
           :flags, :uint,
           :c, RClass.by_ref,
           :gcnext, RBasic.by_ref,
           :len, :int,
           :aux, RStringAux.by_value,
           :ptr, :string
  end

end
