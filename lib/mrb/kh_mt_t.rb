module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :n_buckets ::
  #   (Integer)
  # :size ::
  #   (Integer)
  # :n_occupied ::
  #   (Integer)
  # :upper_bound ::
  #   (Integer)
  # :ed_flags ::
  #   (FFI::Pointer(*Uint8T))
  # :keys ::
  #   (FFI::Pointer(*MrbSym))
  # :vals ::
  #   (FFI::Pointer(**RProc))
  # :mask ::
  #   (Integer)
  # :inc ::
  #   (Integer)
  class KhMtT < FFI::Struct
    layout :n_buckets, :uint,
           :size, :uint,
           :n_occupied, :uint,
           :upper_bound, :uint,
           :ed_flags, :pointer,
           :keys, :pointer,
           :vals, :pointer,
           :mask, :uint,
           :inc, :uint
  end

end
