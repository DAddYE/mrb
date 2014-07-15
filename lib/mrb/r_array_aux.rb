module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :capa ::
  #   (Integer)
  # :shared ::
  #   (MrbSharedArray)
  class RArrayAux < FFI::Union
    layout :capa, :int,
           :shared, MrbSharedArray.by_ref
  end

end
