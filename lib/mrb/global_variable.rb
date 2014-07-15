module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :counter ::
  #   (Integer)
  # :data ::
  #   (MrbValue)
  # :getter ::
  #   (FFI::Pointer(*))
  # :setter ::
  #   (FFI::Pointer(*))
  class GlobalVariable < FFI::Struct
    layout :counter, :int,
           :data, MrbValue.by_ref,
           :getter, :pointer,
           :setter, :pointer
  end

end
