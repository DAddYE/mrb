module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :car ::
  #   (FFI::Pointer(*MrbAstNode))
  # :cdr ::
  #   (FFI::Pointer(*MrbAstNode))
  # :lineno ::
  #   (Integer)
  # :filename_index ::
  #   (Integer)
  class MrbAstNode < FFI::Struct
    layout :car, :pointer,
           :cdr, :pointer,
           :lineno, :ushort,
           :filename_index, :ushort
  end

end
