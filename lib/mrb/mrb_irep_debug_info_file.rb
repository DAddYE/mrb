module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :start_pos ::
  #   (Integer)
  # :filename ::
  #   (String)
  # :filename_sym ::
  #   (Integer)
  # :line_entry_count ::
  #   (Integer)
  # :line_type ::
  #   (Symbol from `enum_mrb_debug_line_type`)
  class MrbIrepDebugInfoFile < FFI::Struct
    layout :start_pos, :uint,
           :filename, :string,
           :filename_sym, :short,
           :line_entry_count, :uint,
           :line_type, :mrb_debug_line_type
  end

end
