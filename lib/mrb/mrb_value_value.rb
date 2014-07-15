module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :f ::
  #   (Float)
  # :p ::
  #   (FFI::Pointer(*Void))
  # :i ::
  #   (Integer)
  # :sym ::
  #   (Integer)
  class MrbValueValue < FFI::Union
    layout :f, :double,
           :p, :pointer,
           :i, :int,
           :sym, :short
  end

end
