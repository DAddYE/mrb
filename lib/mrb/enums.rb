module Mruby
  extend FFI::Library
  # (Not documented)
  #
  # ## Options:
  # :tt_false ::
  #
  # :tt_free ::
  #   0
  # :tt_true ::
  #   1
  # :tt_fixnum ::
  #   2
  # :tt_symbol ::
  #   3
  # :tt_undef ::
  #   4
  # :tt_float ::
  #   5
  # :tt_cptr ::
  #   6
  # :tt_object ::
  #   7
  # :tt_class ::
  #   8
  # :tt_module ::
  #   9
  # :tt_iclass ::
  #   10
  # :tt_sclass ::
  #   11
  # :tt_proc ::
  #   12
  # :tt_array ::
  #   13
  # :tt_hash ::
  #   14
  # :tt_string ::
  #   15
  # :tt_range ::
  #   16
  # :tt_exception ::
  #   17
  # :tt_file ::
  #   18
  # :tt_env ::
  #   19
  # :tt_data ::
  #   20
  # :tt_fiber ::
  #   21
  # :tt_maxdefine ::
  #   22
  #
  # @method `enum_mrb_vtype`
  # @return [Symbol]
  # @scope class
  #
  enum :mrb_vtype, [
    :tt_false, 0,
    :tt_free, 1,
    :tt_true, 2,
    :tt_fixnum, 3,
    :tt_symbol, 4,
    :tt_undef, 5,
    :tt_float, 6,
    :tt_cptr, 7,
    :tt_object, 8,
    :tt_class, 9,
    :tt_module, 10,
    :tt_iclass, 11,
    :tt_sclass, 12,
    :tt_proc, 13,
    :tt_array, 14,
    :tt_hash, 15,
    :tt_string, 16,
    :tt_range, 17,
    :tt_exception, 18,
    :tt_file, 19,
    :tt_env, 20,
    :tt_data, 21,
    :tt_fiber, 22,
    :tt_maxdefine, 23
  ]

  # (Not documented)
  #
  # ## Options:
  # :created ::
  #
  # :running ::
  #
  # :resumed ::
  #
  # :terminated ::
  #
  #
  # @method `enum_mrb_fiber_state`
  # @return [Symbol]
  # @scope class
  #
  enum :mrb_fiber_state, [
    :created, 0,
    :running, 1,
    :resumed, 2,
    :terminated, 3
  ]

  # (Not documented)
  #
  # ## Options:
  # :public ::
  #
  # :fcall ::
  #
  # :vcall ::
  #
  # :type_max ::
  #
  #
  # @method `enum_call_type`
  # @return [Symbol]
  # @scope class
  #
  enum :call_type, [
    :public, 0,
    :fcall, 1,
    :vcall, 2,
    :type_max, 3
  ]

  # (Not documented)
  #
  # ## Options:
  # :expr_beg ::
  #
  # :expr_end ::
  #   ignore newline, +/- is a sign.
  # :expr_endarg ::
  #   newline significant, +/- is an operator.
  # :expr_endfn ::
  #   ditto, and unbound braces.
  # :expr_arg ::
  #   ditto, and unbound braces.
  # :expr_cmdarg ::
  #   newline significant, +/- is an operator.
  # :expr_mid ::
  #   newline significant, +/- is an operator.
  # :expr_fname ::
  #   newline significant, +/- is an operator.
  # :expr_dot ::
  #   ignore newline, no reserved words.
  # :expr_class ::
  #   right after `.' or `::', no reserved words.
  # :expr_value ::
  #   immediate after `class', no here document.
  # :expr_max_state ::
  #   alike EXPR_BEG but label is disallowed.
  #
  # @method `enum_mrb_lex_state_enum`
  # @return [Symbol]
  # @scope class
  #
  enum :mrb_lex_state_enum, [
    :expr_beg, 0,
    :expr_end, 1,
    :expr_endarg, 2,
    :expr_endfn, 3,
    :expr_arg, 4,
    :expr_cmdarg, 5,
    :expr_mid, 6,
    :expr_fname, 7,
    :expr_dot, 8,
    :expr_class, 9,
    :expr_value, 10,
    :expr_max_state, 11
  ]

  # (Not documented)
  #
  # ## Options:
  # :tt_string ::
  #
  # :tt_fixnum ::
  #
  # :tt_float ::
  #
  #
  # @method `enum_irep_pool_type`
  # @return [Symbol]
  # @scope class
  #
  enum :irep_pool_type, [
    :tt_string, 0,
    :tt_fixnum, 1,
    :tt_float, 2
  ]

  # (Not documented)
  #
  # ## Options:
  # :ary ::
  #
  # :flat_map ::
  #
  #
  # @method `enum_mrb_debug_line_type`
  # @return [Symbol]
  # @scope class
  #
  enum :mrb_debug_line_type, [
    :ary, 0,
    :flat_map, 1
  ]

  # (Not documented)
  #
  # ## Options:
  # :none ::
  #
  # :mark ::
  #
  # :sweep ::
  #
  #
  # @method `enum_gc_state`
  # @return [Symbol]
  # @scope class
  #
  enum :gc_state, [
    :none, 0,
    :mark, 1,
    :sweep, 2
  ]

  # (Not documented)
  #
  # ## Options:
  # :str_not_parsing ::
  #
  #
  # @method `enum_mrb_string_type`
  # @return [Symbol]
  # @scope class
  #
  enum :mrb_string_type, [
    :str_not_parsing, 0
  ]

end
