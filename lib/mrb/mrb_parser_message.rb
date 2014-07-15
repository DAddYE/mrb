module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :lineno ::
  #   (Integer)
  # :column ::
  #   (Integer)
  # :message ::
  #   (String)
  class MrbParserMessage < FFI::Struct
    layout :lineno, :int,
           :column, :int,
           :message, :string
  end

end
