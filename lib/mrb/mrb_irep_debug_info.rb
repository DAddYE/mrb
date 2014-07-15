module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :pc_count ::
  #   (Integer)
  # :flen ::
  #   (Integer)
  # :files ::
  #   (FFI::Pointer(**MrbIrepDebugInfoFile))
  class MrbIrepDebugInfo < FFI::Struct
    layout :pc_count, :uint,
           :flen, :ushort,
           :files, :pointer
  end

end
