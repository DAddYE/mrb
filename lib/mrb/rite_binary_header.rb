module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :binary_identify ::
  #   (Array<Integer>) Binary Identifier
  # :binary_version ::
  #   (Array<Integer>) Binary Format Version
  # :binary_crc ::
  #   (Array<Integer>) Binary CRC
  # :binary_size ::
  #   (Array<Integer>) Binary Size
  # :compiler_name ::
  #   (Array<Integer>) Compiler name
  # :compiler_version ::
  #   (Array<Integer>)
  class RiteBinaryHeader < FFI::Struct
    layout :binary_identify, [:uchar, 4],
           :binary_version, [:uchar, 4],
           :binary_crc, [:uchar, 2],
           :binary_size, [:uchar, 4],
           :compiler_name, [:uchar, 4],
           :compiler_version, [:uchar, 4]
  end

end
