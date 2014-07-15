module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :refcnt ::
  #   (Integer)
  # :ptr ::
  #   (MrbValue)
  # :len ::
  #   (Integer)
  class MrbSharedArray < FFI::Struct
    layout :refcnt, :int,
           :ptr, MrbValue.by_ref,
           :len, :int
  end

end
