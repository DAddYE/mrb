module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :allow_indent ::
  #   (Integer)
  # :line_head ::
  #   (Integer)
  # :type ::
  #   (Symbol from `enum_mrb_string_type`)
  # :term ::
  #   (String)
  # :term_len ::
  #   (Integer)
  # :doc ::
  #   (MrbAstNode)
  class MrbParserHeredocInfo < FFI::Struct
    layout :allow_indent, :uchar,
           :line_head, :uchar,
           :type, :mrb_string_type,
           :term, :string,
           :term_len, :int,
           :doc, MrbAstNode.by_ref
  end

end
