module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :var ::
  #   (GlobalVariable)
  # :id ::
  #   (Integer)
  class GlobalEntry < FFI::Struct
    layout :var, GlobalVariable.by_ref,
           :id, :short
  end

end
