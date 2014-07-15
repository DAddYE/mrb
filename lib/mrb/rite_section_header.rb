module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :section_identify ::
  #   (Array<Integer>)
  # :section_size ::
  #   (Array<Integer>)
  class RiteSectionHeader < FFI::Struct
    layout :section_identify, [:uchar, 4],
           :section_size, [:uchar, 4]
  end

end
