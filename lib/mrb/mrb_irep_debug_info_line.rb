module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :start_pos ::
  #   (Integer)
  # :line ::
  #   (Integer)
  class MrbIrepDebugInfoLine < FFI::Struct
    layout :start_pos, :uint,
           :line, :ushort
  end

end
