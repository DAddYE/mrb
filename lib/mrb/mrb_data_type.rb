module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :struct_name ::
  #   (String)
  # :dfree ::
  #   (FFI::Pointer(*))
  class MrbDataType < FFI::Struct
    layout :struct_name, :string,
           :dfree, :pointer
  end

end
