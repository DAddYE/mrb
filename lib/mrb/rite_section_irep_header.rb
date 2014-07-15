module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :section_identify ::
  #   (Array<Integer>)
  # :section_size ::
  #   (Array<Integer>)
  # :rite_version ::
  #   (Array<Integer>) Rite Instruction Specification Version
  class RiteSectionIrepHeader < FFI::Struct
    layout :section_identify, [:uchar, 4],
           :section_size, [:uchar, 4],
           :rite_version, [:uchar, 4]
  end

end
