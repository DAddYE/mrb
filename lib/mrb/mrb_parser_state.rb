module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :mrb ::
  #   (MrbState)
  # :pool ::
  #   (MrbPool)
  # :cells ::
  #   (MrbAstNode)
  # :s ::
  #   (String)
  # :send ::
  #   (String)
  # :f ::
  #   (FFI::Pointer(*FILE))
  # :cxt ::
  #   (MrbcContext)
  # :filename ::
  #   (String)
  # :lineno ::
  #   (Integer)
  # :column ::
  #   (Integer)
  # :lstate ::
  #   (Symbol from `enum_mrb_lex_state_enum`)
  # :lex_strterm ::
  #   (MrbAstNode) (type nest_level beg . end)
  # :cond_stack ::
  #   (Integer)
  # :cmdarg_stack ::
  #   (Integer)
  # :paren_nest ::
  #   (Integer)
  # :lpar_beg ::
  #   (Integer)
  # :in_def ::
  #   (Integer)
  # :in_single ::
  #   (Integer)
  # :cmd_start ::
  #   (Integer)
  # :locals ::
  #   (MrbAstNode)
  # :pb ::
  #   (MrbAstNode)
  # :buf ::
  #   (Array<Integer>)
  # :bidx ::
  #   (Integer)
  # :all_heredocs ::
  #   (MrbAstNode) list of mrb_parser_heredoc_info*
  # :heredocs_from_nextline ::
  #   (MrbAstNode)
  # :parsing_heredoc ::
  #   (MrbAstNode)
  # :lex_strterm_before_heredoc ::
  #   (MrbAstNode)
  # :heredoc_end_now ::
  #   (Integer) for mirb
  # :ylval ::
  #   (FFI::Pointer(*Void))
  # :nerr ::
  #   (Integer)
  # :nwarn ::
  #   (Integer)
  # :tree ::
  #   (MrbAstNode)
  # :capture_errors ::
  #   (Integer)
  # :error_buffer ::
  #   (Array<MrbParserMessage>)
  # :warn_buffer ::
  #   (Array<MrbParserMessage>)
  # :filename_table ::
  #   (FFI::Pointer(*MrbSym))
  # :filename_table_length ::
  #   (Integer)
  # :current_filename_index ::
  #   (Integer)
  # :jmp ::
  #   (Array<Integer>)
  class MrbParserState < FFI::Struct
    layout :mrb, MrbState.by_ref,
           :pool, MrbPool.by_ref,
           :cells, MrbAstNode.by_ref,
           :s, :string,
           :send, :string,
           :f, :pointer,
           :cxt, MrbcContext.by_ref,
           :filename, :string,
           :lineno, :int,
           :column, :int,
           :lstate, :mrb_lex_state_enum,
           :lex_strterm, MrbAstNode.by_ref,
           :cond_stack, :uint,
           :cmdarg_stack, :uint,
           :paren_nest, :int,
           :lpar_beg, :int,
           :in_def, :int,
           :in_single, :int,
           :cmd_start, :int,
           :locals, MrbAstNode.by_ref,
           :pb, MrbAstNode.by_ref,
           :buf, [:char, 1024],
           :bidx, :int,
           :all_heredocs, MrbAstNode.by_ref,
           :heredocs_from_nextline, MrbAstNode.by_ref,
           :parsing_heredoc, MrbAstNode.by_ref,
           :lex_strterm_before_heredoc, MrbAstNode.by_ref,
           :heredoc_end_now, :uchar,
           :ylval, :pointer,
           :nerr, :ulong,
           :nwarn, :ulong,
           :tree, MrbAstNode.by_ref,
           :capture_errors, :int,
           :error_buffer, [MrbParserMessage.by_value, 10],
           :warn_buffer, [MrbParserMessage.by_value, 10],
           :filename_table, :pointer,
           :filename_table_length, :ulong,
           :current_filename_index, :int,
           :jmp, [:int, 37]
  end

end
