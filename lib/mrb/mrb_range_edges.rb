module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :beg ::
  #   (MrbValue)
  # :end_ ::
  #   (MrbValue)
  class MrbRangeEdges < FFI::Struct
    layout :beg, MrbValue.by_value,
           :end_, MrbValue.by_value
  end

end
