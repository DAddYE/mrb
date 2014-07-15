require 'ffi'
require '/enums'

module Mruby
  extend FFI::Library
  ffi_lib 'mruby'

  autoload :MrbValueValue, '/mrb_value_value'
  autoload :MrbValue, '/mrb_value'
  autoload :RClass, '/r_class'
  autoload :RBasic, '/r_basic'
  autoload :IvTbl, '/iv_tbl'
  autoload :RObject, '/r_object'
  autoload :RFiber, '/r_fiber'
  autoload :MrbIrep, '/mrb_irep'
  autoload :RProc, '/r_proc'
  autoload :REnv, '/r_env'
  autoload :MrbCallinfo, '/mrb_callinfo'
  autoload :MrbContext, '/mrb_context'
  autoload :HeapPage, '/heap_page'
  autoload :AllocaHeader, '/alloca_header'
  autoload :KhN2s, '/kh_n2s'
  autoload :MrbState, '/mrb_state'
  autoload :MrbPool, '/mrb_pool'

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

  # compatibility macros; will be removed
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

  # raise RuntimeError if no mem
  #
  # @method mrb_calloc(mrb_state, u_long, u_long)
  # @param [MrbState] mrb_state
  # @param [Integer] u_long
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_calloc, :mrb_calloc, [MrbState.by_ref, :ulong, :ulong], :pointer

  # ditto
  #
  # @method mrb_realloc(mrb_state, void, u_long)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Void)] void
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_realloc, :mrb_realloc, [MrbState.by_ref, :pointer, :ulong], :pointer

  # ditto
  #
  # @method mrb_realloc_simple(mrb_state, void, u_long)
  # @param [MrbState] mrb_state
  # @param [FFI::Pointer(*Void)] void
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_realloc_simple, :mrb_realloc_simple, [MrbState.by_ref, :pointer, :ulong], :pointer

  # return NULL if no memory available
  #
  # @method mrb_malloc_simple(mrb_state, u_long)
  # @param [MrbState] mrb_state
  # @param [Integer] u_long
  # @return [FFI::Pointer(*Void)]
  # @scope class
  #
  attach_function :mrb_malloc_simple, :mrb_malloc_simple, [MrbState.by_ref, :ulong], :pointer

  # return NULL if no memory available
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

  # #define ISASCII(c) isascii((int)(unsigned char)(c))
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

  # macros to get typical exception objects
  #    note:
  #    + those E_* macros requires mrb_state* variable named mrb.
  #    + exception objects obtained from those macros are local to mrb
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

end
