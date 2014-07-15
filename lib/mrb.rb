require 'ffi'
require '/enums'

module Mruby
  extend FFI::Library
  ffi_lib 'mruby'

  autoload :MrbValueValue, '/mrb_value_value'
  autoload :MrbValue, '/mrb_value'
  autoload :RBasic, '/r_basic'
  autoload :IvTbl, '/iv_tbl'
  autoload :RObject, '/r_object'
  autoload :RFiber, '/r_fiber'
  autoload :MrbCallinfo, '/mrb_callinfo'
  autoload :MrbContext, '/mrb_context'
  autoload :HeapPage, '/heap_page'
  autoload :AllocaHeader, '/alloca_header'
  autoload :KhN2s, '/kh_n2s'
  autoload :MrbState, '/mrb_state'
  autoload :MrbPool, '/mrb_pool'
  autoload :MrbSharedArray, '/mrb_shared_array'
  autoload :RArrayAux, '/r_array_aux'
  autoload :RArray, '/r_array'
  autoload :RClass, '/r_class'
  autoload :MrbcContext, '/mrbc_context'
  autoload :MrbAstNode, '/mrb_ast_node'
  autoload :MrbParserMessage, '/mrb_parser_message'
  autoload :MrbParserHeredocInfo, '/mrb_parser_heredoc_info'
  autoload :MrbParserState, '/mrb_parser_state'
  autoload :MrbDataType, '/mrb_data_type'
  autoload :RData, '/r_data'
  autoload :MrbIrep, '/mrb_irep'
  autoload :MrbIrepDebugInfoLine, '/mrb_irep_debug_info_line'
  autoload :MrbIrepDebugInfoFile, '/mrb_irep_debug_info_file'
  autoload :MrbIrepDebugInfo, '/mrb_irep_debug_info'
  autoload :RiteBinaryHeader, '/rite_binary_header'
  autoload :RiteSectionHeader, '/rite_section_header'
  autoload :RiteSectionIrepHeader, '/rite_section_irep_header'
  autoload :RiteSectionLinenoHeader, '/rite_section_lineno_header'
  autoload :RiteSectionDebugHeader, '/rite_section_debug_header'
  autoload :RiteBinaryFooter, '/rite_binary_footer'
  autoload :KhHt, '/kh_ht'
  autoload :RHash, '/r_hash'
  autoload :REnv, '/r_env'
  autoload :RProcBody, '/r_proc_body'
  autoload :RProc, '/r_proc'
  autoload :KhMtT, '/kh_mt_t'
  autoload :MrbRangeEdges, '/mrb_range_edges'
  autoload :RRange, '/r_range'
  autoload :MrbSharedString, '/mrb_shared_string'
  autoload :RStringAux, '/r_string_aux'
  autoload :RString, '/r_string'
  autoload :GlobalVariable, '/global_variable'
  autoload :GlobalEntry, '/global_entry'

  # (Not documented)
  #
  # @method `callback_mrb_allocf`(mrb, , , ud)
  # @param [MrbState] mrb
  # @param [FFI::Pointer(*Void)]
  # @param [Integer]
  # @param [FFI::Pointer(*Void)] ud
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  callback :mrb_allocf, [MrbState.by_ref, :pointer, :ulong, :pointer], :pointer

  # (Not documented)
  #
  # @method `callback_mrb_func_t`(mrb_value, mrb)
  # @param [MrbState] mrb_value
  # @param [MrbValue] mrb
  # @return [MrbValue]
  # @scope class
  #
  callback :mrb_func_t, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_float_value(mrb, f)
  # @param [MrbState] mrb
  # @param [Float] f
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_float_value, :mrb_float_value, [MrbState.by_ref, :double], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_fixnum_value(i)
  # @param [Integer] i
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_fixnum_value, :mrb_fixnum_value, [:int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_symbol_value(i)
  # @param [Integer] i
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_symbol_value, :mrb_symbol_value, [:short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_value(p)
  # @param [FFI::Pointer(*Void)] p
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_value, :mrb_obj_value, [:pointer], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_cptr_value(mrb, p)
  # @param [MrbState] mrb
  # @param [FFI::Pointer(*Void)] p
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_cptr_value, :mrb_cptr_value, [MrbState.by_ref, :pointer], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_false_value()
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_false_value, :mrb_false_value, [], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_nil_value()
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_nil_value, :mrb_nil_value, [], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_true_value()
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_true_value, :mrb_true_value, [], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_undef_value()
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_undef_value, :mrb_undef_value, [], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_bool_value(boolean)
  # @param [Integer] boolean
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_bool_value, :mrb_bool_value, [:uchar], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_define_class(mrb_state, string, r_class)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @param [RClass] r_class
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_define_class, :mrb_define_class, [MrbState.by_ref, :string, RClass.by_ref], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_define_module(mrb_state, string)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_define_module, :mrb_define_module, [MrbState.by_ref, :string], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_singleton_class(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_singleton_class, :mrb_singleton_class, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_include_module(mrb_state, r_class, r_class)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [RClass] r_class
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_include_module, :mrb_include_module, [MrbState.by_ref, RClass.by_ref, RClass.by_ref], :void

  # (Not documented)
  #
  # @method mrb_define_method(mrb_state, r_class, string, mrb_func_t, u_int)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [String] string
  # @param [Proc(callback_mrb_func_t)] mrb_func_t
  # @param [Integer] u_int
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_method, :mrb_define_method, [MrbState.by_ref, RClass.by_ref, :string, :mrb_func_t, :uint], :void

  # (Not documented)
  #
  # @method mrb_define_class_method(mrb_state, r_class, string, mrb_func_t, u_int)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [String] string
  # @param [Proc(callback_mrb_func_t)] mrb_func_t
  # @param [Integer] u_int
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_class_method, :mrb_define_class_method, [MrbState.by_ref, RClass.by_ref, :string, :mrb_func_t, :uint], :void

  # (Not documented)
  #
  # @method mrb_define_singleton_method(mrb_state, r_object, string, mrb_func_t, u_int)
  # @param [MrbState] mrb_state
  # @param [RObject] r_object
  # @param [String] string
  # @param [Proc(callback_mrb_func_t)] mrb_func_t
  # @param [Integer] u_int
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_singleton_method, :mrb_define_singleton_method, [MrbState.by_ref, RObject.by_ref, :string, :mrb_func_t, :uint], :void

  # (Not documented)
  #
  # @method mrb_define_module_function(mrb_state, r_class, string, mrb_func_t, u_int)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [String] string
  # @param [Proc(callback_mrb_func_t)] mrb_func_t
  # @param [Integer] u_int
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_module_function, :mrb_define_module_function, [MrbState.by_ref, RClass.by_ref, :string, :mrb_func_t, :uint], :void

  # (Not documented)
  #
  # @method mrb_define_const(mrb_state, r_class, name, mrb_value)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [String] name
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_const, :mrb_define_const, [MrbState.by_ref, RClass.by_ref, :string, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_undef_method(mrb_state, r_class, string)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [String] string
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_undef_method, :mrb_undef_method, [MrbState.by_ref, RClass.by_ref, :string], :void

  # (Not documented)
  #
  # @method mrb_undef_class_method(mrb_state, r_class, string)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [String] string
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_undef_class_method, :mrb_undef_class_method, [MrbState.by_ref, RClass.by_ref, :string], :void

  # (Not documented)
  #
  # @method mrb_obj_new(mrb, c, argc, argv)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [Integer] argc
  # @param [MrbValue] argv
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_new, :mrb_obj_new, [MrbState.by_ref, RClass.by_ref, :int, MrbValue.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_instance_new(mrb, cv)
  # @param [MrbState] mrb
  # @param [MrbValue] cv
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_instance_new, :mrb_instance_new, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_class_new(mrb, super_)
  # @param [MrbState] mrb
  # @param [RClass] super_
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_class_new, :mrb_class_new, [MrbState.by_ref, RClass.by_ref], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_module_new(mrb)
  # @param [MrbState] mrb
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_module_new, :mrb_module_new, [MrbState.by_ref], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_class_defined(mrb, name)
  # @param [MrbState] mrb
  # @param [String] name
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_class_defined, :mrb_class_defined, [MrbState.by_ref, :string], :uchar

  # (Not documented)
  #
  # @method mrb_class_get(mrb, name)
  # @param [MrbState] mrb
  # @param [String] name
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_class_get, :mrb_class_get, [MrbState.by_ref, :string], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_class_get_under(mrb, outer, name)
  # @param [MrbState] mrb
  # @param [RClass] outer
  # @param [String] name
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_class_get_under, :mrb_class_get_under, [MrbState.by_ref, RClass.by_ref, :string], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_obj_dup(mrb, obj)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_dup, :mrb_obj_dup, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_check_to_integer(mrb, val, method)
  # @param [MrbState] mrb
  # @param [MrbValue] val
  # @param [String] method
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_to_integer, :mrb_check_to_integer, [MrbState.by_ref, MrbValue.by_value, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_respond_to(mrb, c, mid)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [Integer] mid
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_respond_to, :mrb_obj_respond_to, [MrbState.by_ref, RClass.by_ref, :short], :uchar

  # (Not documented)
  #
  # @method mrb_define_class_under(mrb, outer, name, super_)
  # @param [MrbState] mrb
  # @param [RClass] outer
  # @param [String] name
  # @param [RClass] super_
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_define_class_under, :mrb_define_class_under, [MrbState.by_ref, RClass.by_ref, :string, RClass.by_ref], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_define_module_under(mrb, outer, name)
  # @param [MrbState] mrb
  # @param [RClass] outer
  # @param [String] name
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_define_module_under, :mrb_define_module_under, [MrbState.by_ref, RClass.by_ref, :string], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_get_args(mrb, format)
  # @param [MrbState] mrb
  # @param [String] format
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_get_args, :mrb_get_args, [MrbState.by_ref, :string], :int

  # (Not documented)
  #
  # @method mrb_funcall(mrb_state, mrb_value, string, int)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [String] string
  # @param [Integer] int
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_funcall, :mrb_funcall, [MrbState.by_ref, MrbValue.by_value, :string, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_funcall_argv(mrb_state, mrb_value, short, int, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @param [Integer] int
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_funcall_argv, :mrb_funcall_argv, [MrbState.by_ref, MrbValue.by_value, :short, :int, MrbValue.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_funcall_with_block(mrb_state, mrb_value, short, int, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @param [Integer] int
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_funcall_with_block, :mrb_funcall_with_block, [MrbState.by_ref, MrbValue.by_value, :short, :int, MrbValue.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_intern_cstr(mrb_state, string)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_intern_cstr, :mrb_intern_cstr, [MrbState.by_ref, :string], :short

  # (Not documented)
  #
  # @method mrb_intern(mrb_state, string, u_long)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @param [Integer] u_long
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_intern, :mrb_intern, [MrbState.by_ref, :string, :ulong], :short

  # (Not documented)
  #
  # @method mrb_intern_static(mrb_state, string, u_long)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @param [Integer] u_long
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_intern_static, :mrb_intern_static, [MrbState.by_ref, :string, :ulong], :short

  # (Not documented)
  #
  # @method mrb_intern_str(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_intern_str, :mrb_intern_str, [MrbState.by_ref, MrbValue.by_value], :short

  # (Not documented)
  #
  # @method mrb_check_intern_cstr(mrb_state, string)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_intern_cstr, :mrb_check_intern_cstr, [MrbState.by_ref, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_check_intern(mrb_state, string, u_long)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @param [Integer] u_long
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_intern, :mrb_check_intern, [MrbState.by_ref, :string, :ulong], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_check_intern_str(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_intern_str, :mrb_check_intern_str, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_sym2name(mrb_state, short)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @return [String]
  # @scope class
  #
  attach_function :mrb_sym2name, :mrb_sym2name, [MrbState.by_ref, :short], :string

  # (Not documented)
  #
  # @method mrb_sym2name_len(mrb_state, short, size_t)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @param [FFI::Pointer(*SizeT)] size_t
  # @return [String]
  # @scope class
  #
  attach_function :mrb_sym2name_len, :mrb_sym2name_len, [MrbState.by_ref, :short, :pointer], :string

  # (Not documented)
  #
  # @method mrb_sym2str(mrb_state, short)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_sym2str, :mrb_sym2str, [MrbState.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_format(mrb_state, int, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [Integer] int
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_format, :mrb_str_format, [MrbState.by_ref, :int, MrbValue.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_malloc(mrb_state, u_long)
  # @param [MrbState] mrb_state
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_malloc, :mrb_malloc, [MrbState.by_ref, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_calloc(mrb_state, u_long, u_long)
  # @param [MrbState] mrb_state
  # @param [Integer] u_long
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_calloc, :mrb_calloc, [MrbState.by_ref, :ulong, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_realloc(mrb_state, void, u_long)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Void)] void
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_realloc, :mrb_realloc, [MrbState.by_ref, :pointer, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_realloc_simple(mrb_state, void, u_long)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Void)] void
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_realloc_simple, :mrb_realloc_simple, [MrbState.by_ref, :pointer, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_malloc_simple(mrb_state, u_long)
  # @param [MrbState] mrb_state
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_malloc_simple, :mrb_malloc_simple, [MrbState.by_ref, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_obj_alloc(mrb_state, mrb_vtype, r_class)
  # @param [MrbState] mrb_state
  # @param [Symbol from `enum_mrb_vtype`] mrb_vtype
  # @param [RClass] r_class
  # @return [RBasic]
  # @scope class
  #
  attach_function :mrb_obj_alloc, :mrb_obj_alloc, [MrbState.by_ref, :mrb_vtype, RClass.by_ref], RBasic.by_ref

  # (Not documented)
  #
  # @method mrb_free(mrb_state, void)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Void)] void
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_free, :mrb_free, [MrbState.by_ref, :pointer], :void

  # (Not documented)
  #
  # @method mrb_str_new(mrb, p, len)
  # @param [MrbState] mrb
  # @param [String] p
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_new, :mrb_str_new, [MrbState.by_ref, :string, :ulong], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_new_cstr(mrb_state, string)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_new_cstr, :mrb_str_new_cstr, [MrbState.by_ref, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_new_static(mrb, p, len)
  # @param [MrbState] mrb
  # @param [String] p
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_new_static, :mrb_str_new_static, [MrbState.by_ref, :string, :ulong], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_open()
  # @return [MrbState]
  # @scope class
  #
  attach_function :mrb_open, :mrb_open, [], MrbState.by_ref

  # (Not documented)
  #
  # @method mrb_open_allocf(mrb_allocf, ud)
  # @param [Proc(callback_mrb_allocf)] mrb_allocf
  # @param [FFI::Pointer(*Void)] ud
  # @return [MrbState]
  # @scope class
  #
  attach_function :mrb_open_allocf, :mrb_open_allocf, [:mrb_allocf, :pointer], MrbState.by_ref

  # (Not documented)
  #
  # @method mrb_close(mrb_state)
  # @param [MrbState] mrb_state
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_close, :mrb_close, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_top_self(mrb_state)
  # @param [MrbState] mrb_state
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_top_self, :mrb_top_self, [MrbState.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_run(mrb_state, r_proc, mrb_value)
  # @param [MrbState] mrb_state
  # @param [RProc] r_proc
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_run, :mrb_run, [MrbState.by_ref, RProc.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_context_run(mrb_state, r_proc, mrb_value, u_int)
  # @param [MrbState] mrb_state
  # @param [RProc] r_proc
  # @param [MrbValue] mrb_value
  # @param [Integer] u_int
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_context_run, :mrb_context_run, [MrbState.by_ref, RProc.by_ref, MrbValue.by_value, :uint], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_p(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_p, :mrb_p, [MrbState.by_ref, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_obj_id(obj)
  # @param [MrbValue] obj
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_id, :mrb_obj_id, [MrbValue.by_value], :int

  # (Not documented)
  #
  # @method mrb_obj_to_sym(mrb, name)
  # @param [MrbState] mrb
  # @param [MrbValue] name
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_to_sym, :mrb_obj_to_sym, [MrbState.by_ref, MrbValue.by_value], :short

  # (Not documented)
  #
  # @method mrb_obj_eq(mrb_state, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_eq, :mrb_obj_eq, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :uchar

  # (Not documented)
  #
  # @method mrb_obj_equal(mrb_state, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_equal, :mrb_obj_equal, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :uchar

  # (Not documented)
  #
  # @method mrb_equal(mrb, obj1, obj2)
  # @param [MrbState] mrb
  # @param [MrbValue] obj1
  # @param [MrbValue] obj2
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_equal, :mrb_equal, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :uchar

  # (Not documented)
  #
  # @method mrb_integer(mrb, val)
  # @param [MrbState] mrb
  # @param [MrbValue] val
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_integer, :mrb_Integer, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_float(mrb, val)
  # @param [MrbState] mrb
  # @param [MrbValue] val
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_float, :mrb_Float, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_inspect(mrb, obj)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_inspect, :mrb_inspect, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_eql(mrb, obj1, obj2)
  # @param [MrbState] mrb
  # @param [MrbValue] obj1
  # @param [MrbValue] obj2
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_eql, :mrb_eql, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :uchar

  # (Not documented)
  #
  # @method mrb_garbage_collect(mrb_state)
  # @param [MrbState] mrb_state
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_garbage_collect, :mrb_garbage_collect, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_full_gc(mrb_state)
  # @param [MrbState] mrb_state
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_full_gc, :mrb_full_gc, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_incremental_gc(mrb_state)
  # @param [MrbState] mrb_state
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_incremental_gc, :mrb_incremental_gc, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_gc_arena_save(mrb_state)
  # @param [MrbState] mrb_state
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_gc_arena_save, :mrb_gc_arena_save, [MrbState.by_ref], :int

  # (Not documented)
  #
  # @method mrb_gc_arena_restore(mrb_state, int)
  # @param [MrbState] mrb_state
  # @param [Integer] int
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_arena_restore, :mrb_gc_arena_restore, [MrbState.by_ref, :int], :void

  # (Not documented)
  #
  # @method mrb_gc_mark(mrb_state, r_basic)
  # @param [MrbState] mrb_state
  # @param [RBasic] r_basic
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_mark, :mrb_gc_mark, [MrbState.by_ref, RBasic.by_ref], :void

  # (Not documented)
  #
  # @method mrb_field_write_barrier(mrb_state, r_basic, r_basic)
  # @param [MrbState] mrb_state
  # @param [RBasic] r_basic
  # @param [RBasic] r_basic
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_field_write_barrier, :mrb_field_write_barrier, [MrbState.by_ref, RBasic.by_ref, RBasic.by_ref], :void

  # (Not documented)
  #
  # @method mrb_write_barrier(mrb_state, r_basic)
  # @param [MrbState] mrb_state
  # @param [RBasic] r_basic
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_write_barrier, :mrb_write_barrier, [MrbState.by_ref, RBasic.by_ref], :void

  # (Not documented)
  #
  # @method mrb_check_convert_type(mrb, val, type, tname, method)
  # @param [MrbState] mrb
  # @param [MrbValue] val
  # @param [Symbol from `enum_mrb_vtype`] type
  # @param [String] tname
  # @param [String] method
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_convert_type, :mrb_check_convert_type, [MrbState.by_ref, MrbValue.by_value, :mrb_vtype, :string, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_any_to_s(mrb, obj)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_any_to_s, :mrb_any_to_s, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_classname(mrb, obj)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @return [String]
  # @scope class
  #
  attach_function :mrb_obj_classname, :mrb_obj_classname, [MrbState.by_ref, MrbValue.by_value], :string

  # (Not documented)
  #
  # @method mrb_obj_class(mrb, obj)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_obj_class, :mrb_obj_class, [MrbState.by_ref, MrbValue.by_value], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_class_path(mrb, c)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_class_path, :mrb_class_path, [MrbState.by_ref, RClass.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_convert_type(mrb, val, type, tname, method)
  # @param [MrbState] mrb
  # @param [MrbValue] val
  # @param [Symbol from `enum_mrb_vtype`] type
  # @param [String] tname
  # @param [String] method
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_convert_type, :mrb_convert_type, [MrbState.by_ref, MrbValue.by_value, :mrb_vtype, :string, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_is_kind_of(mrb, obj, c)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @param [RClass] c
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_is_kind_of, :mrb_obj_is_kind_of, [MrbState.by_ref, MrbValue.by_value, RClass.by_ref], :uchar

  # (Not documented)
  #
  # @method mrb_obj_inspect(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_inspect, :mrb_obj_inspect, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_clone(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_clone, :mrb_obj_clone, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_exc_new(mrb, c, ptr, len)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [String] ptr
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_exc_new, :mrb_exc_new, [MrbState.by_ref, RClass.by_ref, :string, :long], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_exc_raise(mrb, exc)
  # @param [MrbState] mrb
  # @param [MrbValue] exc
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_exc_raise, :mrb_exc_raise, [MrbState.by_ref, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_raise(mrb, c, msg)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [String] msg
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_raise, :mrb_raise, [MrbState.by_ref, RClass.by_ref, :string], :void

  # (Not documented)
  #
  # @method mrb_raisef(mrb, c, fmt)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [String] fmt
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_raisef, :mrb_raisef, [MrbState.by_ref, RClass.by_ref, :string], :void

  # (Not documented)
  #
  # @method mrb_name_error(mrb, id, fmt)
  # @param [MrbState] mrb
  # @param [Integer] id
  # @param [String] fmt
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_name_error, :mrb_name_error, [MrbState.by_ref, :short, :string], :void

  # (Not documented)
  #
  # @method mrb_warn(mrb, fmt)
  # @param [MrbState] mrb
  # @param [String] fmt
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_warn, :mrb_warn, [MrbState.by_ref, :string], :void

  # (Not documented)
  #
  # @method mrb_bug(mrb, fmt)
  # @param [MrbState] mrb
  # @param [String] fmt
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_bug, :mrb_bug, [MrbState.by_ref, :string], :void

  # (Not documented)
  #
  # @method mrb_print_backtrace(mrb)
  # @param [MrbState] mrb
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_print_backtrace, :mrb_print_backtrace, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_print_error(mrb)
  # @param [MrbState] mrb
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_print_error, :mrb_print_error, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_yield(mrb, b, arg)
  # @param [MrbState] mrb
  # @param [MrbValue] b
  # @param [MrbValue] arg
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_yield, :mrb_yield, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_yield_argv(mrb, b, argc, argv)
  # @param [MrbState] mrb
  # @param [MrbValue] b
  # @param [Integer] argc
  # @param [MrbValue] argv
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_yield_argv, :mrb_yield_argv, [MrbState.by_ref, MrbValue.by_value, :int, MrbValue.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_gc_protect(mrb, obj)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_protect, :mrb_gc_protect, [MrbState.by_ref, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_to_int(mrb, val)
  # @param [MrbState] mrb
  # @param [MrbValue] val
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_to_int, :mrb_to_int, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_check_type(mrb, x, t)
  # @param [MrbState] mrb
  # @param [MrbValue] x
  # @param [Symbol from `enum_mrb_vtype`] t
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_check_type, :mrb_check_type, [MrbState.by_ref, MrbValue.by_value, :mrb_vtype], :void

  # (Not documented)
  #
  # @method mrb_define_alias(mrb, klass, name1, name2)
  # @param [MrbState] mrb
  # @param [RClass] klass
  # @param [String] name1
  # @param [String] name2
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_alias, :mrb_define_alias, [MrbState.by_ref, RClass.by_ref, :string, :string], :void

  # (Not documented)
  #
  # @method mrb_class_name(mrb, klass)
  # @param [MrbState] mrb
  # @param [RClass] klass
  # @return [String]
  # @scope class
  #
  attach_function :mrb_class_name, :mrb_class_name, [MrbState.by_ref, RClass.by_ref], :string

  # (Not documented)
  #
  # @method mrb_define_global_const(mrb, name, val)
  # @param [MrbState] mrb
  # @param [String] name
  # @param [MrbValue] val
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_global_const, :mrb_define_global_const, [MrbState.by_ref, :string, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_block_proc()
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_block_proc, :mrb_block_proc, [], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_attr_get(mrb, obj, id)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @param [Integer] id
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_attr_get, :mrb_attr_get, [MrbState.by_ref, MrbValue.by_value, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_respond_to(mrb, obj, mid)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @param [Integer] mid
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_respond_to, :mrb_respond_to, [MrbState.by_ref, MrbValue.by_value, :short], :uchar

  # (Not documented)
  #
  # @method mrb_obj_is_instance_of(mrb, obj, c)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @param [RClass] c
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_is_instance_of, :mrb_obj_is_instance_of, [MrbState.by_ref, MrbValue.by_value, RClass.by_ref], :uchar

  # (Not documented)
  #
  # @method mrb_pool_open(mrb_state)
  # @param [MrbState] mrb_state
  # @return [MrbPool]
  # @scope class
  #
  attach_function :mrb_pool_open, :mrb_pool_open, [MrbState.by_ref], MrbPool.by_ref

  # (Not documented)
  #
  # @method mrb_pool_close(mrb_pool)
  # @param [MrbPool] mrb_pool
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_pool_close, :mrb_pool_close, [MrbPool.by_ref], :void

  # (Not documented)
  #
  # @method mrb_pool_alloc(mrb_pool, u_long)
  # @param [MrbPool] mrb_pool
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_pool_alloc, :mrb_pool_alloc, [MrbPool.by_ref, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_pool_realloc(mrb_pool, void, oldlen, newlen)
  # @param [MrbPool] mrb_pool
  # @param [FFI::Pointer(*Void)] void
  # @param [Integer] oldlen
  # @param [Integer] newlen
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_pool_realloc, :mrb_pool_realloc, [MrbPool.by_ref, :pointer, :ulong, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_pool_can_realloc(mrb_pool, void, u_long)
  # @param [MrbPool] mrb_pool
  # @param [FFI::Pointer(*Void)] void
  # @param [Integer] u_long
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_pool_can_realloc, :mrb_pool_can_realloc, [MrbPool.by_ref, :pointer, :ulong], :uchar

  # (Not documented)
  #
  # @method mrb_alloca(mrb, u_long)
  # @param [MrbState] mrb
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_alloca, :mrb_alloca, [MrbState.by_ref, :ulong], :pointer

  # (Not documented)
  #
  # @method mrb_ary_modify(mrb_state, r_array)
  # @param [MrbState] mrb_state
  # @param [RArray] r_array
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_ary_modify, :mrb_ary_modify, [MrbState.by_ref, RArray.by_ref], :void

  # (Not documented)
  #
  # @method mrb_ary_decref(mrb_state, mrb_shared_array)
  # @param [MrbState] mrb_state
  # @param [MrbSharedArray] mrb_shared_array
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_ary_decref, :mrb_ary_decref, [MrbState.by_ref, MrbSharedArray.by_ref], :void

  # (Not documented)
  #
  # @method mrb_ary_new_capa(mrb_state, int)
  # @param [MrbState] mrb_state
  # @param [Integer] int
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_new_capa, :mrb_ary_new_capa, [MrbState.by_ref, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_new(mrb)
  # @param [MrbState] mrb
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_new, :mrb_ary_new, [MrbState.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_new_from_values(mrb, size, vals)
  # @param [MrbState] mrb
  # @param [Integer] size
  # @param [MrbValue] vals
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_new_from_values, :mrb_ary_new_from_values, [MrbState.by_ref, :int, MrbValue.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_concat(mrb_state, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_ary_concat, :mrb_ary_concat, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_ary_splat(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_splat, :mrb_ary_splat, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_push(mrb_state, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_ary_push, :mrb_ary_push, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_ary_pop(mrb, ary)
  # @param [MrbState] mrb
  # @param [MrbValue] ary
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_pop, :mrb_ary_pop, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_aget(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_aget, :mrb_ary_aget, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_ref(mrb, ary, n)
  # @param [MrbState] mrb
  # @param [MrbValue] ary
  # @param [Integer] n
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_ref, :mrb_ary_ref, [MrbState.by_ref, MrbValue.by_value, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_set(mrb, ary, n, val)
  # @param [MrbState] mrb
  # @param [MrbValue] ary
  # @param [Integer] n
  # @param [MrbValue] val
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_ary_set, :mrb_ary_set, [MrbState.by_ref, MrbValue.by_value, :int, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_ary_len(mrb, ary)
  # @param [MrbState] mrb
  # @param [MrbValue] ary
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_ary_len, :mrb_ary_len, [MrbState.by_ref, MrbValue.by_value], :int

  # (Not documented)
  #
  # @method mrb_ary_replace(mrb, a, b)
  # @param [MrbState] mrb
  # @param [MrbValue] a
  # @param [MrbValue] b
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_ary_replace, :mrb_ary_replace, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_check_array_type(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_array_type, :mrb_check_array_type, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_unshift(mrb, self_, item)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @param [MrbValue] item
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_unshift, :mrb_ary_unshift, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_assoc_new(mrb, car, cdr)
  # @param [MrbState] mrb
  # @param [MrbValue] car
  # @param [MrbValue] cdr
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_assoc_new, :mrb_assoc_new, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_entry(ary, offset)
  # @param [MrbValue] ary
  # @param [Integer] offset
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_entry, :mrb_ary_entry, [MrbValue.by_value, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_shift(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_shift, :mrb_ary_shift, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_clear(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_clear, :mrb_ary_clear, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ary_join(mrb, ary, sep)
  # @param [MrbState] mrb
  # @param [MrbValue] ary
  # @param [MrbValue] sep
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ary_join, :mrb_ary_join, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_class(mrb, v)
  # @param [MrbState] mrb
  # @param [MrbValue] v
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_class, :mrb_class, [MrbState.by_ref, MrbValue.by_value], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_define_class_id(mrb_state, short, r_class)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @param [RClass] r_class
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_define_class_id, :mrb_define_class_id, [MrbState.by_ref, :short, RClass.by_ref], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_define_module_id(mrb_state, short)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_define_module_id, :mrb_define_module_id, [MrbState.by_ref, :short], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_vm_define_class(mrb_state, mrb_value, mrb_value, short)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_vm_define_class, :mrb_vm_define_class, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value, :short], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_vm_define_module(mrb_state, mrb_value, short)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_vm_define_module, :mrb_vm_define_module, [MrbState.by_ref, MrbValue.by_value, :short], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_define_method_vm(mrb_state, r_class, short, mrb_value)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [Integer] short
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_method_vm, :mrb_define_method_vm, [MrbState.by_ref, RClass.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_define_method_raw(mrb_state, r_class, short, r_proc)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [Integer] short
  # @param [RProc] r_proc
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_method_raw, :mrb_define_method_raw, [MrbState.by_ref, RClass.by_ref, :short, RProc.by_ref], :void

  # (Not documented)
  #
  # @method mrb_define_method_id(mrb, c, mid, func, aspec)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [Integer] mid
  # @param [Proc(callback_mrb_func_t)] func
  # @param [Integer] aspec
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_define_method_id, :mrb_define_method_id, [MrbState.by_ref, RClass.by_ref, :short, :mrb_func_t, :uint], :void

  # (Not documented)
  #
  # @method mrb_alias_method(mrb, c, a, b)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [Integer] a
  # @param [Integer] b
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_alias_method, :mrb_alias_method, [MrbState.by_ref, RClass.by_ref, :short, :short], :void

  # (Not documented)
  #
  # @method mrb_class_outer_module(mrb_state, r_class)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_class_outer_module, :mrb_class_outer_module, [MrbState.by_ref, RClass.by_ref], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_method_search_vm(mrb_state, r_class, short)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(**RClass)] r_class
  # @param [Integer] short
  # @return [RProc]
  # @scope class
  #
  attach_function :mrb_method_search_vm, :mrb_method_search_vm, [MrbState.by_ref, :pointer, :short], RProc.by_ref

  # (Not documented)
  #
  # @method mrb_method_search(mrb_state, r_class, short)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @param [Integer] short
  # @return [RProc]
  # @scope class
  #
  attach_function :mrb_method_search, :mrb_method_search, [MrbState.by_ref, RClass.by_ref, :short], RProc.by_ref

  # (Not documented)
  #
  # @method mrb_class_real(cl)
  # @param [RClass] cl
  # @return [RClass]
  # @scope class
  #
  attach_function :mrb_class_real, :mrb_class_real, [RClass.by_ref], RClass.by_ref

  # (Not documented)
  #
  # @method mrb_gc_mark_mt(mrb_state, r_class)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_mark_mt, :mrb_gc_mark_mt, [MrbState.by_ref, RClass.by_ref], :void

  # (Not documented)
  #
  # @method mrb_gc_mark_mt_size(mrb_state, r_class)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_gc_mark_mt_size, :mrb_gc_mark_mt_size, [MrbState.by_ref, RClass.by_ref], :ulong

  # (Not documented)
  #
  # @method mrb_gc_free_mt(mrb_state, r_class)
  # @param [MrbState] mrb_state
  # @param [RClass] r_class
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_free_mt, :mrb_gc_free_mt, [MrbState.by_ref, RClass.by_ref], :void

  # (Not documented)
  #
  # @method mrbc_context_new(mrb)
  # @param [MrbState] mrb
  # @return [MrbcContext]
  # @scope class
  #
  attach_function :mrbc_context_new, :mrbc_context_new, [MrbState.by_ref], MrbcContext.by_ref

  # (Not documented)
  #
  # @method mrbc_context_free(mrb, cxt)
  # @param [MrbState] mrb
  # @param [MrbcContext] cxt
  # @return [nil]
  # @scope class
  #
  attach_function :mrbc_context_free, :mrbc_context_free, [MrbState.by_ref, MrbcContext.by_ref], :void

  # (Not documented)
  #
  # @method mrbc_filename(mrb, c, s)
  # @param [MrbState] mrb
  # @param [MrbcContext] c
  # @param [String] s
  # @return [String]
  # @scope class
  #
  attach_function :mrbc_filename, :mrbc_filename, [MrbState.by_ref, MrbcContext.by_ref, :string], :string

  # (Not documented)
  #
  # @method mrbc_partial_hook(mrb, c, partial_hook, data)
  # @param [MrbState] mrb
  # @param [MrbcContext] c
  # @param [FFI::Pointer(*)] partial_hook
  # @param [FFI::Pointer(*Void)] data
  # @return [nil]
  # @scope class
  #
  attach_function :mrbc_partial_hook, :mrbc_partial_hook, [MrbState.by_ref, MrbcContext.by_ref, :pointer, :pointer], :void

  # (Not documented)
  #
  # @method mrb_parser_new(mrb_state)
  # @param [MrbState] mrb_state
  # @return [MrbParserState]
  # @scope class
  #
  attach_function :mrb_parser_new, :mrb_parser_new, [MrbState.by_ref], MrbParserState.by_ref

  # (Not documented)
  #
  # @method mrb_parser_free(mrb_parser_state)
  # @param [MrbParserState] mrb_parser_state
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_parser_free, :mrb_parser_free, [MrbParserState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_parser_parse(mrb_parser_state, mrbc_context)
  # @param [MrbParserState] mrb_parser_state
  # @param [MrbcContext] mrbc_context
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_parser_parse, :mrb_parser_parse, [MrbParserState.by_ref, MrbcContext.by_ref], :void

  # (Not documented)
  #
  # @method mrb_parser_set_filename(mrb_parser_state, string)
  # @param [MrbParserState] mrb_parser_state
  # @param [String] string
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_parser_set_filename, :mrb_parser_set_filename, [MrbParserState.by_ref, :string], :void

  # (Not documented)
  #
  # @method mrb_parser_get_filename(mrb_parser_state, idx)
  # @param [MrbParserState] mrb_parser_state
  # @param [Integer] idx
  # @return [String]
  # @scope class
  #
  attach_function :mrb_parser_get_filename, :mrb_parser_get_filename, [MrbParserState.by_ref, :ushort], :string

  # (Not documented)
  #
  # @method mrb_parse_file(mrb_state, file, mrbc_context)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*FILE)] file
  # @param [MrbcContext] mrbc_context
  # @return [MrbParserState]
  # @scope class
  #
  attach_function :mrb_parse_file, :mrb_parse_file, [MrbState.by_ref, :pointer, MrbcContext.by_ref], MrbParserState.by_ref

  # (Not documented)
  #
  # @method mrb_parse_string(mrb_state, string, mrbc_context)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @param [MrbcContext] mrbc_context
  # @return [MrbParserState]
  # @scope class
  #
  attach_function :mrb_parse_string, :mrb_parse_string, [MrbState.by_ref, :string, MrbcContext.by_ref], MrbParserState.by_ref

  # (Not documented)
  #
  # @method mrb_parse_nstring(mrb_state, string, int, mrbc_context)
  # @param [MrbState] mrb_state
  # @param [String] string
  # @param [Integer] int
  # @param [MrbcContext] mrbc_context
  # @return [MrbParserState]
  # @scope class
  #
  attach_function :mrb_parse_nstring, :mrb_parse_nstring, [MrbState.by_ref, :string, :int, MrbcContext.by_ref], MrbParserState.by_ref

  # (Not documented)
  #
  # @method mrb_generate_code(mrb_state, mrb_parser_state)
  # @param [MrbState] mrb_state
  # @param [MrbParserState] mrb_parser_state
  # @return [RProc]
  # @scope class
  #
  attach_function :mrb_generate_code, :mrb_generate_code, [MrbState.by_ref, MrbParserState.by_ref], RProc.by_ref

  # (Not documented)
  #
  # @method mrb_load_file(mrb_state, file)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*FILE)] file
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_file, :mrb_load_file, [MrbState.by_ref, :pointer], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_load_string(mrb, s)
  # @param [MrbState] mrb
  # @param [String] s
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_string, :mrb_load_string, [MrbState.by_ref, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_load_nstring(mrb, s, len)
  # @param [MrbState] mrb
  # @param [String] s
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_nstring, :mrb_load_nstring, [MrbState.by_ref, :string, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_load_file_cxt(mrb_state, file, cxt)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*FILE)] file
  # @param [MrbcContext] cxt
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_file_cxt, :mrb_load_file_cxt, [MrbState.by_ref, :pointer, MrbcContext.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_load_string_cxt(mrb, s, cxt)
  # @param [MrbState] mrb
  # @param [String] s
  # @param [MrbcContext] cxt
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_string_cxt, :mrb_load_string_cxt, [MrbState.by_ref, :string, MrbcContext.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_load_nstring_cxt(mrb, s, len, cxt)
  # @param [MrbState] mrb
  # @param [String] s
  # @param [Integer] len
  # @param [MrbcContext] cxt
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_nstring_cxt, :mrb_load_nstring_cxt, [MrbState.by_ref, :string, :int, MrbcContext.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_data_object_alloc(mrb, klass, datap, type)
  # @param [MrbState] mrb
  # @param [RClass] klass
  # @param [FFI::Pointer(*Void)] datap
  # @param [MrbDataType] type
  # @return [RData]
  # @scope class
  #
  attach_function :mrb_data_object_alloc, :mrb_data_object_alloc, [MrbState.by_ref, RClass.by_ref, :pointer, MrbDataType.by_ref], RData.by_ref

  # (Not documented)
  #
  # @method mrb_data_check_type(mrb, mrb_value, mrb_data_type)
  # @param [MrbState] mrb
  # @param [MrbValue] mrb_value
  # @param [MrbDataType] mrb_data_type
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_data_check_type, :mrb_data_check_type, [MrbState.by_ref, MrbValue.by_value, MrbDataType.by_ref], :void

  # (Not documented)
  #
  # @method mrb_data_get_ptr(mrb, mrb_value, mrb_data_type)
  # @param [MrbState] mrb
  # @param [MrbValue] mrb_value
  # @param [MrbDataType] mrb_data_type
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_data_get_ptr, :mrb_data_get_ptr, [MrbState.by_ref, MrbValue.by_value, MrbDataType.by_ref], :pointer

  # (Not documented)
  #
  # @method mrb_data_check_get_ptr(mrb, mrb_value, mrb_data_type)
  # @param [MrbState] mrb
  # @param [MrbValue] mrb_value
  # @param [MrbDataType] mrb_data_type
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_data_check_get_ptr, :mrb_data_check_get_ptr, [MrbState.by_ref, MrbValue.by_value, MrbDataType.by_ref], :pointer

  # (Not documented)
  #
  # @method mrb_add_irep(mrb)
  # @param [MrbState] mrb
  # @return [MrbIrep]
  # @scope class
  #
  attach_function :mrb_add_irep, :mrb_add_irep, [MrbState.by_ref], MrbIrep.by_ref

  # (Not documented)
  #
  # @method mrb_load_irep(mrb_state, uint8_t)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Uint8T)] uint8_t
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_irep, :mrb_load_irep, [MrbState.by_ref, :pointer], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_load_irep_cxt(mrb_state, uint8_t, mrbc_context)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Uint8T)] uint8_t
  # @param [MrbcContext] mrbc_context
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_irep_cxt, :mrb_load_irep_cxt, [MrbState.by_ref, :pointer, MrbcContext.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_irep_free(mrb_state, mrb_irep)
  # @param [MrbState] mrb_state
  # @param [MrbIrep] mrb_irep
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_irep_free, :mrb_irep_free, [MrbState.by_ref, MrbIrep.by_ref], :void

  # (Not documented)
  #
  # @method mrb_irep_incref(mrb_state, mrb_irep)
  # @param [MrbState] mrb_state
  # @param [MrbIrep] mrb_irep
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_irep_incref, :mrb_irep_incref, [MrbState.by_ref, MrbIrep.by_ref], :void

  # (Not documented)
  #
  # @method mrb_irep_decref(mrb_state, mrb_irep)
  # @param [MrbState] mrb_state
  # @param [MrbIrep] mrb_irep
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_irep_decref, :mrb_irep_decref, [MrbState.by_ref, MrbIrep.by_ref], :void

  # (Not documented)
  #
  # @method mrb_debug_get_filename(irep, pc)
  # @param [MrbIrep] irep
  # @param [Integer] pc
  # @return [String]
  # @scope class
  #
  attach_function :mrb_debug_get_filename, :mrb_debug_get_filename, [MrbIrep.by_ref, :uint], :string

  # (Not documented)
  #
  # @method mrb_debug_get_line(irep, pc)
  # @param [MrbIrep] irep
  # @param [Integer] pc
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_debug_get_line, :mrb_debug_get_line, [MrbIrep.by_ref, :uint], :int

  # (Not documented)
  #
  # @method mrb_debug_info_append_file(mrb, irep, start_pos, end_pos)
  # @param [MrbState] mrb
  # @param [MrbIrep] irep
  # @param [Integer] start_pos
  # @param [Integer] end_pos
  # @return [MrbIrepDebugInfoFile]
  # @scope class
  #
  attach_function :mrb_debug_info_append_file, :mrb_debug_info_append_file, [MrbState.by_ref, MrbIrep.by_ref, :uint, :uint], MrbIrepDebugInfoFile.by_ref

  # (Not documented)
  #
  # @method mrb_debug_info_alloc(mrb, irep)
  # @param [MrbState] mrb
  # @param [MrbIrep] irep
  # @return [MrbIrepDebugInfo]
  # @scope class
  #
  attach_function :mrb_debug_info_alloc, :mrb_debug_info_alloc, [MrbState.by_ref, MrbIrep.by_ref], MrbIrepDebugInfo.by_ref

  # (Not documented)
  #
  # @method mrb_debug_info_free(mrb, d)
  # @param [MrbState] mrb
  # @param [MrbIrepDebugInfo] d
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_debug_info_free, :mrb_debug_info_free, [MrbState.by_ref, MrbIrepDebugInfo.by_ref], :void

  # (Not documented)
  #
  # @method mrb_dump_irep_binary(mrb_state, mrb_irep, int, file)
  # @param [MrbState] mrb_state
  # @param [MrbIrep] mrb_irep
  # @param [Integer] int
  # @param [FFI::Pointer(*FILE)] file
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_dump_irep_binary, :mrb_dump_irep_binary, [MrbState.by_ref, MrbIrep.by_ref, :int, :pointer], :int

  # (Not documented)
  #
  # @method mrb_dump_irep_cfunc(mrb, mrb_irep, int, f, initname)
  # @param [MrbState] mrb
  # @param [MrbIrep] mrb_irep
  # @param [Integer] int
  # @param [FFI::Pointer(*FILE)] f
  # @param [String] initname
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_dump_irep_cfunc, :mrb_dump_irep_cfunc, [MrbState.by_ref, MrbIrep.by_ref, :int, :pointer, :string], :int

  # (Not documented)
  #
  # @method mrb_read_irep_file(mrb_state, file)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*FILE)] file
  # @return [MrbIrep]
  # @scope class
  #
  attach_function :mrb_read_irep_file, :mrb_read_irep_file, [MrbState.by_ref, :pointer], MrbIrep.by_ref

  # (Not documented)
  #
  # @method mrb_load_irep_file(mrb_state, file)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*FILE)] file
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_irep_file, :mrb_load_irep_file, [MrbState.by_ref, :pointer], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_load_irep_file_cxt(mrb_state, file, mrbc_context)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*FILE)] file
  # @param [MrbcContext] mrbc_context
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_load_irep_file_cxt, :mrb_load_irep_file_cxt, [MrbState.by_ref, :pointer, MrbcContext.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_read_irep(mrb_state, uint8_t)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Uint8T)] uint8_t
  # @return [MrbIrep]
  # @scope class
  #
  attach_function :mrb_read_irep, :mrb_read_irep, [MrbState.by_ref, :pointer], MrbIrep.by_ref

  # (Not documented)
  #
  # @method uint8_to_bin(s, bin)
  # @param [Integer] s
  # @param [FFI::Pointer(*Uint8T)] bin
  # @return [Integer]
  # @scope class
  #
  attach_function :uint8_to_bin, :uint8_to_bin, [:uchar, :pointer], :int

  # (Not documented)
  #
  # @method uint16_to_bin(s, bin)
  # @param [Integer] s
  # @param [FFI::Pointer(*Uint8T)] bin
  # @return [Integer]
  # @scope class
  #
  attach_function :uint16_to_bin, :uint16_to_bin, [:ushort, :pointer], :int

  # (Not documented)
  #
  # @method uint32_to_bin(l, bin)
  # @param [Integer] l
  # @param [FFI::Pointer(*Uint8T)] bin
  # @return [Integer]
  # @scope class
  #
  attach_function :uint32_to_bin, :uint32_to_bin, [:uint, :pointer], :int

  # (Not documented)
  #
  # @method bin_to_uint32(bin)
  # @param [FFI::Pointer(*Uint8T)] bin
  # @return [Integer]
  # @scope class
  #
  attach_function :bin_to_uint32, :bin_to_uint32, [:pointer], :uint

  # (Not documented)
  #
  # @method bin_to_uint16(bin)
  # @param [FFI::Pointer(*Uint8T)] bin
  # @return [Integer]
  # @scope class
  #
  attach_function :bin_to_uint16, :bin_to_uint16, [:pointer], :ushort

  # (Not documented)
  #
  # @method bin_to_uint8(bin)
  # @param [FFI::Pointer(*Uint8T)] bin
  # @return [Integer]
  # @scope class
  #
  attach_function :bin_to_uint8, :bin_to_uint8, [:pointer], :uchar

  # (Not documented)
  #
  # @method calc_crc_16_ccitt(src, nbytes, crc)
  # @param [FFI::Pointer(*Uint8T)] src
  # @param [Integer] nbytes
  # @param [Integer] crc
  # @return [Integer]
  # @scope class
  #
  attach_function :calc_crc_16_ccitt, :calc_crc_16_ccitt, [:pointer, :ulong, :ushort], :ushort

  # (Not documented)
  #
  # @method mrb_objspace_each_objects(mrb, callback, data)
  # @param [MrbState] mrb
  # @param [FFI::Pointer(*EachObjectCallback)] callback
  # @param [FFI::Pointer(*Void)] data
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_objspace_each_objects, :mrb_objspace_each_objects, [MrbState.by_ref, :pointer, :pointer], :void

  # (Not documented)
  #
  # @method mrb_free_context(mrb, c)
  # @param [MrbState] mrb
  # @param [MrbContext] c
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_free_context, :mrb_free_context, [MrbState.by_ref, MrbContext.by_ref], :void

  # (Not documented)
  #
  # @method mrb_hash_new_capa(mrb_state, int)
  # @param [MrbState] mrb_state
  # @param [Integer] int
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_new_capa, :mrb_hash_new_capa, [MrbState.by_ref, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_new(mrb)
  # @param [MrbState] mrb
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_new, :mrb_hash_new, [MrbState.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_set(mrb, hash, key, val)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @param [MrbValue] key
  # @param [MrbValue] val
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_hash_set, :mrb_hash_set, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_hash_get(mrb, hash, key)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @param [MrbValue] key
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_get, :mrb_hash_get, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_fetch(mrb, hash, key, def_)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @param [MrbValue] key
  # @param [MrbValue] def_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_fetch, :mrb_hash_fetch, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_delete_key(mrb, hash, key)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @param [MrbValue] key
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_delete_key, :mrb_hash_delete_key, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_keys(mrb, hash)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_keys, :mrb_hash_keys, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_check_hash_type(mrb, hash)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_hash_type, :mrb_check_hash_type, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_empty_p(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_empty_p, :mrb_hash_empty_p, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_clear(mrb, hash)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_hash_clear, :mrb_hash_clear, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_hash_tbl(mrb, hash)
  # @param [MrbState] mrb
  # @param [MrbValue] hash
  # @return [KhHt]
  # @scope class
  #
  attach_function :mrb_hash_tbl, :mrb_hash_tbl, [MrbState.by_ref, MrbValue.by_value], KhHt.by_ref

  # (Not documented)
  #
  # @method mrb_gc_mark_hash(mrb_state, r_hash)
  # @param [MrbState] mrb_state
  # @param [RHash] r_hash
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_mark_hash, :mrb_gc_mark_hash, [MrbState.by_ref, RHash.by_ref], :void

  # (Not documented)
  #
  # @method mrb_gc_mark_hash_size(mrb_state, r_hash)
  # @param [MrbState] mrb_state
  # @param [RHash] r_hash
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_gc_mark_hash_size, :mrb_gc_mark_hash_size, [MrbState.by_ref, RHash.by_ref], :ulong

  # (Not documented)
  #
  # @method mrb_gc_free_hash(mrb_state, r_hash)
  # @param [MrbState] mrb_state
  # @param [RHash] r_hash
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_free_hash, :mrb_gc_free_hash, [MrbState.by_ref, RHash.by_ref], :void

  # (Not documented)
  #
  # @method kh_fill_flags(p, c, len)
  # @param [FFI::Pointer(*Uint8T)] p
  # @param [Integer] c
  # @param [Integer] len
  # @return [nil]
  # @scope class
  #
  attach_function :kh_fill_flags, :kh_fill_flags, [:pointer, :uchar, :ulong], :void

  # (Not documented)
  #
  # @method ac_x31_hash_string(s)
  # @param [String] s
  # @return [Integer]
  # @scope class
  #
  attach_function :ac_x31_hash_string, :__ac_X31_hash_string, [:string], :uint

  # (Not documented)
  #
  # @method mrb_flo_to_fixnum(mrb, val)
  # @param [MrbState] mrb
  # @param [MrbValue] val
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_flo_to_fixnum, :mrb_flo_to_fixnum, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_flo_to_str(mrb, flo, max_digit)
  # @param [MrbState] mrb
  # @param [MrbValue] flo
  # @param [Integer] max_digit
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_flo_to_str, :mrb_flo_to_str, [MrbState.by_ref, MrbValue.by_value, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_fixnum_to_str(mrb, x, base)
  # @param [MrbState] mrb
  # @param [MrbValue] x
  # @param [Integer] base
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_fixnum_to_str, :mrb_fixnum_to_str, [MrbState.by_ref, MrbValue.by_value, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_fixnum_plus(mrb, x, y)
  # @param [MrbState] mrb
  # @param [MrbValue] x
  # @param [MrbValue] y
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_fixnum_plus, :mrb_fixnum_plus, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_fixnum_minus(mrb, x, y)
  # @param [MrbState] mrb
  # @param [MrbValue] x
  # @param [MrbValue] y
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_fixnum_minus, :mrb_fixnum_minus, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_fixnum_mul(mrb, x, y)
  # @param [MrbState] mrb
  # @param [MrbValue] x
  # @param [MrbValue] y
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_fixnum_mul, :mrb_fixnum_mul, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_num_div(mrb, x, y)
  # @param [MrbState] mrb
  # @param [MrbValue] x
  # @param [MrbValue] y
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_num_div, :mrb_num_div, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_proc_new(mrb_state, mrb_irep)
  # @param [MrbState] mrb_state
  # @param [MrbIrep] mrb_irep
  # @return [RProc]
  # @scope class
  #
  attach_function :mrb_proc_new, :mrb_proc_new, [MrbState.by_ref, MrbIrep.by_ref], RProc.by_ref

  # (Not documented)
  #
  # @method mrb_proc_new_cfunc(mrb_state, mrb_func_t)
  # @param [MrbState] mrb_state
  # @param [Proc(callback_mrb_func_t)] mrb_func_t
  # @return [RProc]
  # @scope class
  #
  attach_function :mrb_proc_new_cfunc, :mrb_proc_new_cfunc, [MrbState.by_ref, :mrb_func_t], RProc.by_ref

  # (Not documented)
  #
  # @method mrb_closure_new(mrb_state, mrb_irep)
  # @param [MrbState] mrb_state
  # @param [MrbIrep] mrb_irep
  # @return [RProc]
  # @scope class
  #
  attach_function :mrb_closure_new, :mrb_closure_new, [MrbState.by_ref, MrbIrep.by_ref], RProc.by_ref

  # (Not documented)
  #
  # @method mrb_closure_new_cfunc(mrb, func, nlocals)
  # @param [MrbState] mrb
  # @param [Proc(callback_mrb_func_t)] func
  # @param [Integer] nlocals
  # @return [RProc]
  # @scope class
  #
  attach_function :mrb_closure_new_cfunc, :mrb_closure_new_cfunc, [MrbState.by_ref, :mrb_func_t, :int], RProc.by_ref

  # (Not documented)
  #
  # @method mrb_proc_copy(a, b)
  # @param [RProc] a
  # @param [RProc] b
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_proc_copy, :mrb_proc_copy, [RProc.by_ref, RProc.by_ref], :void

  # (Not documented)
  #
  # @method kh_alloc_mt(mrb, h)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @return [nil]
  # @scope class
  #
  attach_function :kh_alloc_mt, :kh_alloc_mt, [MrbState.by_ref, KhMtT.by_ref], :void

  # (Not documented)
  #
  # @method kh_init_mt_size(mrb, size)
  # @param [MrbState] mrb
  # @param [Integer] size
  # @return [KhMtT]
  # @scope class
  #
  attach_function :kh_init_mt_size, :kh_init_mt_size, [MrbState.by_ref, :uint], KhMtT.by_ref

  # (Not documented)
  #
  # @method kh_init_mt(mrb)
  # @param [MrbState] mrb
  # @return [KhMtT]
  # @scope class
  #
  attach_function :kh_init_mt, :kh_init_mt, [MrbState.by_ref], KhMtT.by_ref

  # (Not documented)
  #
  # @method kh_destroy_mt(mrb, h)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @return [nil]
  # @scope class
  #
  attach_function :kh_destroy_mt, :kh_destroy_mt, [MrbState.by_ref, KhMtT.by_ref], :void

  # (Not documented)
  #
  # @method kh_clear_mt(mrb, h)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @return [nil]
  # @scope class
  #
  attach_function :kh_clear_mt, :kh_clear_mt, [MrbState.by_ref, KhMtT.by_ref], :void

  # (Not documented)
  #
  # @method kh_get_mt(mrb, h, key)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @param [Integer] key
  # @return [Integer]
  # @scope class
  #
  attach_function :kh_get_mt, :kh_get_mt, [MrbState.by_ref, KhMtT.by_ref, :short], :uint

  # (Not documented)
  #
  # @method kh_put_mt(mrb, h, key)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @param [Integer] key
  # @return [Integer]
  # @scope class
  #
  attach_function :kh_put_mt, :kh_put_mt, [MrbState.by_ref, KhMtT.by_ref, :short], :uint

  # (Not documented)
  #
  # @method kh_resize_mt(mrb, h, new_n_buckets)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @param [Integer] new_n_buckets
  # @return [nil]
  # @scope class
  #
  attach_function :kh_resize_mt, :kh_resize_mt, [MrbState.by_ref, KhMtT.by_ref, :uint], :void

  # (Not documented)
  #
  # @method kh_del_mt(mrb, h, x)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @param [Integer] x
  # @return [nil]
  # @scope class
  #
  attach_function :kh_del_mt, :kh_del_mt, [MrbState.by_ref, KhMtT.by_ref, :uint], :void

  # (Not documented)
  #
  # @method kh_copy_mt(mrb, h)
  # @param [MrbState] mrb
  # @param [KhMtT] h
  # @return [KhMtT]
  # @scope class
  #
  attach_function :kh_copy_mt, :kh_copy_mt, [MrbState.by_ref, KhMtT.by_ref], KhMtT.by_ref

  # (Not documented)
  #
  # @method mrb_range_new(mrb_state, mrb_value, mrb_value, int)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @param [Integer] int
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_range_new, :mrb_range_new, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_range_beg_len(mrb, range, begp, lenp, len)
  # @param [MrbState] mrb
  # @param [MrbValue] range
  # @param [FFI::Pointer(*MrbInt)] begp
  # @param [FFI::Pointer(*MrbInt)] lenp
  # @param [Integer] len
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_range_beg_len, :mrb_range_beg_len, [MrbState.by_ref, MrbValue.by_value, :pointer, :pointer, :int], :int

  # (Not documented)
  #
  # @method mrb_gc_free_str(mrb_state, r_string)
  # @param [MrbState] mrb_state
  # @param [RString] r_string
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_free_str, :mrb_gc_free_str, [MrbState.by_ref, RString.by_ref], :void

  # (Not documented)
  #
  # @method mrb_str_modify(mrb_state, r_string)
  # @param [MrbState] mrb_state
  # @param [RString] r_string
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_str_modify, :mrb_str_modify, [MrbState.by_ref, RString.by_ref], :void

  # (Not documented)
  #
  # @method mrb_str_literal(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_literal, :mrb_str_literal, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_concat(mrb_state, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_str_concat, :mrb_str_concat, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_str_plus(mrb_state, mrb_value, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_plus, :mrb_str_plus, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_ptr_to_str(mrb_state, void)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Void)] void
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_ptr_to_str, :mrb_ptr_to_str, [MrbState.by_ref, :pointer], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_as_string(mrb, obj)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_as_string, :mrb_obj_as_string, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_resize(mrb, str, len)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_resize, :mrb_str_resize, [MrbState.by_ref, MrbValue.by_value, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_substr(mrb, str, beg, len)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [Integer] beg
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_substr, :mrb_str_substr, [MrbState.by_ref, MrbValue.by_value, :int, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_string_type(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_string_type, :mrb_string_type, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_check_string_type(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_check_string_type, :mrb_check_string_type, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_buf_new(mrb, capa)
  # @param [MrbState] mrb
  # @param [Integer] capa
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_buf_new, :mrb_str_buf_new, [MrbState.by_ref, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_buf_cat(mrb, str, ptr, len)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [String] ptr
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_buf_cat, :mrb_str_buf_cat, [MrbState.by_ref, MrbValue.by_value, :string, :ulong], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_string_value_cstr(mrb, ptr)
  # @param [MrbState] mrb
  # @param [MrbValue] ptr
  # @return [String]
  # @scope class
  #
  attach_function :mrb_string_value_cstr, :mrb_string_value_cstr, [MrbState.by_ref, MrbValue.by_ref], :string

  # (Not documented)
  #
  # @method mrb_string_value_ptr(mrb, ptr)
  # @param [MrbState] mrb
  # @param [MrbValue] ptr
  # @return [String]
  # @scope class
  #
  attach_function :mrb_string_value_ptr, :mrb_string_value_ptr, [MrbState.by_ref, MrbValue.by_value], :string

  # (Not documented)
  #
  # @method mrb_str_offset(mrb, str, pos)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [Integer] pos
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_str_offset, :mrb_str_offset, [MrbState.by_ref, MrbValue.by_value, :int], :int

  # (Not documented)
  #
  # @method mrb_str_dup(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_dup, :mrb_str_dup, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_intern(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_intern, :mrb_str_intern, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_cat_cstr(mrb_state, mrb_value, string)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [String] string
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_cat_cstr, :mrb_str_cat_cstr, [MrbState.by_ref, MrbValue.by_value, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_to_inum(mrb, str, base, badcheck)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [Integer] base
  # @param [Integer] badcheck
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_to_inum, :mrb_str_to_inum, [MrbState.by_ref, MrbValue.by_value, :int, :int], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_to_dbl(mrb, str, badcheck)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [Integer] badcheck
  # @return [Float]
  # @scope class
  #
  attach_function :mrb_str_to_dbl, :mrb_str_to_dbl, [MrbState.by_ref, MrbValue.by_value, :int], :double

  # (Not documented)
  #
  # @method mrb_str_to_str(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_to_str, :mrb_str_to_str, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_hash(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_str_hash, :mrb_str_hash, [MrbState.by_ref, MrbValue.by_value], :int

  # (Not documented)
  #
  # @method mrb_str_buf_append(mrb, str, str2)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [MrbValue] str2
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_buf_append, :mrb_str_buf_append, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_inspect(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_inspect, :mrb_str_inspect, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_equal(mrb, str1, str2)
  # @param [MrbState] mrb
  # @param [MrbValue] str1
  # @param [MrbValue] str2
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_str_equal, :mrb_str_equal, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :uchar

  # (Not documented)
  #
  # @method mrb_str_dump(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_dump, :mrb_str_dump, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_cat(mrb, str, ptr, len)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [String] ptr
  # @param [Integer] len
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_cat, :mrb_str_cat, [MrbState.by_ref, MrbValue.by_value, :string, :ulong], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_append(mrb, str, str2)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [MrbValue] str2
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_append, :mrb_str_append, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_cmp(mrb, str1, str2)
  # @param [MrbState] mrb
  # @param [MrbValue] str1
  # @param [MrbValue] str2
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_str_cmp, :mrb_str_cmp, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :int

  # (Not documented)
  #
  # @method mrb_str_to_cstr(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [String]
  # @scope class
  #
  attach_function :mrb_str_to_cstr, :mrb_str_to_cstr, [MrbState.by_ref, MrbValue.by_value], :string

  # (Not documented)
  #
  # @method mrb_str_pool(mrb, str)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_pool, :mrb_str_pool, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_str_cat2(mrb, str, ptr)
  # @param [MrbState] mrb
  # @param [MrbValue] str
  # @param [String] ptr
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_str_cat2, :mrb_str_cat2, [MrbState.by_ref, MrbValue.by_value, :string], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_vm_special_get(mrb_state, short)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_vm_special_get, :mrb_vm_special_get, [MrbState.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_vm_special_set(mrb_state, short, mrb_value)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_vm_special_set, :mrb_vm_special_set, [MrbState.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_vm_iv_get(mrb_state, short)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_vm_iv_get, :mrb_vm_iv_get, [MrbState.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_vm_iv_set(mrb_state, short, mrb_value)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_vm_iv_set, :mrb_vm_iv_set, [MrbState.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_vm_cv_get(mrb_state, short)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_vm_cv_get, :mrb_vm_cv_get, [MrbState.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_vm_cv_set(mrb_state, short, mrb_value)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_vm_cv_set, :mrb_vm_cv_set, [MrbState.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_vm_const_get(mrb_state, short)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_vm_const_get, :mrb_vm_const_get, [MrbState.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_vm_const_set(mrb_state, short, mrb_value)
  # @param [MrbState] mrb_state
  # @param [Integer] short
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_vm_const_set, :mrb_vm_const_set, [MrbState.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_const_get(mrb_state, mrb_value, short)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_const_get, :mrb_const_get, [MrbState.by_ref, MrbValue.by_value, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_const_set(mrb_state, mrb_value, short, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @param [MrbValue] mrb_value
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_const_set, :mrb_const_set, [MrbState.by_ref, MrbValue.by_value, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_const_defined(mrb_state, mrb_value, short)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_const_defined, :mrb_const_defined, [MrbState.by_ref, MrbValue.by_value, :short], :uchar

  # (Not documented)
  #
  # @method mrb_const_remove(mrb_state, mrb_value, short)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_const_remove, :mrb_const_remove, [MrbState.by_ref, MrbValue.by_value, :short], :void

  # (Not documented)
  #
  # @method mrb_obj_iv_get(mrb, obj, sym)
  # @param [MrbState] mrb
  # @param [RObject] obj
  # @param [Integer] sym
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_iv_get, :mrb_obj_iv_get, [MrbState.by_ref, RObject.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_iv_set(mrb, obj, sym, v)
  # @param [MrbState] mrb
  # @param [RObject] obj
  # @param [Integer] sym
  # @param [MrbValue] v
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_obj_iv_set, :mrb_obj_iv_set, [MrbState.by_ref, RObject.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_obj_iv_defined(mrb, obj, sym)
  # @param [MrbState] mrb
  # @param [RObject] obj
  # @param [Integer] sym
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_obj_iv_defined, :mrb_obj_iv_defined, [MrbState.by_ref, RObject.by_ref, :short], :uchar

  # (Not documented)
  #
  # @method mrb_obj_iv_ifnone(mrb, obj, sym, v)
  # @param [MrbState] mrb
  # @param [RObject] obj
  # @param [Integer] sym
  # @param [MrbValue] v
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_obj_iv_ifnone, :mrb_obj_iv_ifnone, [MrbState.by_ref, RObject.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_iv_get(mrb, obj, sym)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @param [Integer] sym
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_iv_get, :mrb_iv_get, [MrbState.by_ref, MrbValue.by_value, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_iv_set(mrb, obj, sym, v)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @param [Integer] sym
  # @param [MrbValue] v
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_iv_set, :mrb_iv_set, [MrbState.by_ref, MrbValue.by_value, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_iv_defined(mrb_state, mrb_value, short)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @param [Integer] short
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_iv_defined, :mrb_iv_defined, [MrbState.by_ref, MrbValue.by_value, :short], :uchar

  # (Not documented)
  #
  # @method mrb_iv_remove(mrb, obj, sym)
  # @param [MrbState] mrb
  # @param [MrbValue] obj
  # @param [Integer] sym
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_iv_remove, :mrb_iv_remove, [MrbState.by_ref, MrbValue.by_value, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_iv_copy(mrb, dst, src)
  # @param [MrbState] mrb
  # @param [MrbValue] dst
  # @param [MrbValue] src
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_iv_copy, :mrb_iv_copy, [MrbState.by_ref, MrbValue.by_value, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_const_defined_at(mrb, klass, id)
  # @param [MrbState] mrb
  # @param [RClass] klass
  # @param [Integer] id
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_const_defined_at, :mrb_const_defined_at, [MrbState.by_ref, RClass.by_ref, :short], :int

  # (Not documented)
  #
  # @method mrb_mod_constants(mrb, mod)
  # @param [MrbState] mrb
  # @param [MrbValue] mod
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_mod_constants, :mrb_mod_constants, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_f_global_variables(mrb, self_)
  # @param [MrbState] mrb
  # @param [MrbValue] self_
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_f_global_variables, :mrb_f_global_variables, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_gv_get(mrb, sym)
  # @param [MrbState] mrb
  # @param [Integer] sym
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_gv_get, :mrb_gv_get, [MrbState.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_gv_set(mrb, sym, val)
  # @param [MrbState] mrb
  # @param [Integer] sym
  # @param [MrbValue] val
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gv_set, :mrb_gv_set, [MrbState.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_gv_remove(mrb, sym)
  # @param [MrbState] mrb
  # @param [Integer] sym
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gv_remove, :mrb_gv_remove, [MrbState.by_ref, :short], :void

  # (Not documented)
  #
  # @method mrb_obj_instance_variables(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_instance_variables, :mrb_obj_instance_variables, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_obj_iv_inspect(mrb_state, r_object)
  # @param [MrbState] mrb_state
  # @param [RObject] r_object
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_obj_iv_inspect, :mrb_obj_iv_inspect, [MrbState.by_ref, RObject.by_ref], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_class_sym(mrb, c, outer)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [RClass] outer
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_class_sym, :mrb_class_sym, [MrbState.by_ref, RClass.by_ref, RClass.by_ref], :short

  # (Not documented)
  #
  # @method mrb_mod_class_variables(mrb_state, mrb_value)
  # @param [MrbState] mrb_state
  # @param [MrbValue] mrb_value
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_mod_class_variables, :mrb_mod_class_variables, [MrbState.by_ref, MrbValue.by_value], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_mod_cv_get(mrb, c, sym)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [Integer] sym
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_mod_cv_get, :mrb_mod_cv_get, [MrbState.by_ref, RClass.by_ref, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_cv_get(mrb, mod, sym)
  # @param [MrbState] mrb
  # @param [MrbValue] mod
  # @param [Integer] sym
  # @return [MrbValue]
  # @scope class
  #
  attach_function :mrb_cv_get, :mrb_cv_get, [MrbState.by_ref, MrbValue.by_value, :short], MrbValue.by_value

  # (Not documented)
  #
  # @method mrb_mod_cv_set(mrb, c, sym, v)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [Integer] sym
  # @param [MrbValue] v
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_mod_cv_set, :mrb_mod_cv_set, [MrbState.by_ref, RClass.by_ref, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_cv_set(mrb, mod, sym, v)
  # @param [MrbState] mrb
  # @param [MrbValue] mod
  # @param [Integer] sym
  # @param [MrbValue] v
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_cv_set, :mrb_cv_set, [MrbState.by_ref, MrbValue.by_value, :short, MrbValue.by_value], :void

  # (Not documented)
  #
  # @method mrb_mod_cv_defined(mrb, c, sym)
  # @param [MrbState] mrb
  # @param [RClass] c
  # @param [Integer] sym
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_mod_cv_defined, :mrb_mod_cv_defined, [MrbState.by_ref, RClass.by_ref, :short], :uchar

  # (Not documented)
  #
  # @method mrb_cv_defined(mrb, mod, sym)
  # @param [MrbState] mrb
  # @param [MrbValue] mod
  # @param [Integer] sym
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_cv_defined, :mrb_cv_defined, [MrbState.by_ref, MrbValue.by_value, :short], :uchar

  # GC functions
  #
  # @method mrb_gc_mark_gv(mrb_state)
  # @param [MrbState] mrb_state
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_mark_gv, :mrb_gc_mark_gv, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_gc_free_gv(mrb_state)
  # @param [MrbState] mrb_state
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_free_gv, :mrb_gc_free_gv, [MrbState.by_ref], :void

  # (Not documented)
  #
  # @method mrb_gc_mark_iv(mrb_state, r_object)
  # @param [MrbState] mrb_state
  # @param [RObject] r_object
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_mark_iv, :mrb_gc_mark_iv, [MrbState.by_ref, RObject.by_ref], :void

  # (Not documented)
  #
  # @method mrb_gc_mark_iv_size(mrb_state, r_object)
  # @param [MrbState] mrb_state
  # @param [RObject] r_object
  # @return [Integer]
  # @scope class
  #
  attach_function :mrb_gc_mark_iv_size, :mrb_gc_mark_iv_size, [MrbState.by_ref, RObject.by_ref], :ulong

  # (Not documented)
  #
  # @method mrb_gc_free_iv(mrb_state, r_object)
  # @param [MrbState] mrb_state
  # @param [RObject] r_object
  # @return [nil]
  # @scope class
  #
  attach_function :mrb_gc_free_iv, :mrb_gc_free_iv, [MrbState.by_ref, RObject.by_ref], :void

end
