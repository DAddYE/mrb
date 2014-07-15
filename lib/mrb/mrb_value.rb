module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :value ::
  #   (MrbValueValue)
  # :tt ::
  #   (Symbol from `enum_mrb_vtype`)
  class MrbValue < FFI::Struct
    layout :value, MrbValueValue.by_value,
           :tt, :mrb_vtype
  end

end
