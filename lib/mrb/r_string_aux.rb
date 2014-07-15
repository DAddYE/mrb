module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :capa ::
  #   (Integer)
  # :shared ::
  #   (MrbSharedString)
  class RStringAux < FFI::Union
    layout :capa, :int,
           :shared, MrbSharedString.by_ref
  end

end
