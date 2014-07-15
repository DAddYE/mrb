module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :jmp ::
  #   (FFI::Pointer(*Void))
  # :allocf ::
  #   (Proc(callback_mrb_allocf)) memory allocation function
  # :c ::
  #   (MrbContext)
  # :root_c ::
  #   (MrbContext)
  # :exc ::
  #   (RObject) exception
  # :globals ::
  #   (IvTbl) global variable table
  # :top_self ::
  #   (RObject)
  # :object_class ::
  #   (RClass) Object class
  # :class_class ::
  #   (RClass)
  # :module_class ::
  #   (RClass)
  # :proc_class ::
  #   (RClass)
  # :string_class ::
  #   (RClass)
  # :array_class ::
  #   (RClass)
  # :hash_class ::
  #   (RClass)
  # :float_class ::
  #   (RClass)
  # :fixnum_class ::
  #   (RClass)
  # :true_class ::
  #   (RClass)
  # :false_class ::
  #   (RClass)
  # :nil_class ::
  #   (RClass)
  # :symbol_class ::
  #   (RClass)
  # :kernel_module ::
  #   (RClass)
  # :heaps ::
  #   (HeapPage) heaps for GC
  # :sweeps ::
  #   (HeapPage)
  # :free_heaps ::
  #   (HeapPage)
  # :live ::
  #   (Integer) count of live objects
  # :arena ::
  #   (FFI::Pointer(**RBasic)) GC protection array
  # :arena_capa ::
  #   (Integer)
  # :arena_idx ::
  #   (Integer)
  # :gc_state ::
  #   (Symbol from `enum_gc_state`) state of gc
  # :current_white_part ::
  #   (Integer) make white object by white_part
  # :gray_list ::
  #   (RBasic) list of gray objects to be traversed incrementally
  # :atomic_gray_list ::
  #   (RBasic) list of objects to be traversed atomically
  # :gc_live_after_mark ::
  #   (Integer)
  # :gc_threshold ::
  #   (Integer)
  # :gc_interval_ratio ::
  #   (Integer)
  # :gc_step_ratio ::
  #   (Integer)
  # :gc_disabled ::
  #   (Integer)
  # :gc_full ::
  #   (Integer)
  # :is_generational_gc_mode ::
  #   (Integer)
  # :out_of_memory ::
  #   (Integer)
  # :majorgc_old_threshold ::
  #   (Integer)
  # :mems ::
  #   (AllocaHeader)
  # :symidx ::
  #   (Integer)
  # :name2sym ::
  #   (KhN2s) symbol table
  # :e_exception_class ::
  #   (RClass)
  # :e_standard_error_class ::
  #   (RClass)
  # :ud ::
  #   (FFI::Pointer(*Void)) auxiliary data
  class MrbState < FFI::Struct
    layout :jmp, :pointer,
           :allocf, :mrb_allocf,
           :c, MrbContext.by_ref,
           :root_c, MrbContext.by_ref,
           :exc, RObject.by_ref,
           :globals, IvTbl.by_ref,
           :top_self, RObject.by_ref,
           :object_class, RClass.by_ref,
           :class_class, RClass.by_ref,
           :module_class, RClass.by_ref,
           :proc_class, RClass.by_ref,
           :string_class, RClass.by_ref,
           :array_class, RClass.by_ref,
           :hash_class, RClass.by_ref,
           :float_class, RClass.by_ref,
           :fixnum_class, RClass.by_ref,
           :true_class, RClass.by_ref,
           :false_class, RClass.by_ref,
           :nil_class, RClass.by_ref,
           :symbol_class, RClass.by_ref,
           :kernel_module, RClass.by_ref,
           :heaps, HeapPage.by_ref,
           :sweeps, HeapPage.by_ref,
           :free_heaps, HeapPage.by_ref,
           :live, :ulong,
           :arena, :pointer,
           :arena_capa, :int,
           :arena_idx, :int,
           :gc_state, :gc_state,
           :current_white_part, :int,
           :gray_list, RBasic.by_ref,
           :atomic_gray_list, RBasic.by_ref,
           :gc_live_after_mark, :ulong,
           :gc_threshold, :ulong,
           :gc_interval_ratio, :int,
           :gc_step_ratio, :int,
           :gc_disabled, :uchar,
           :gc_full, :uchar,
           :is_generational_gc_mode, :uchar,
           :out_of_memory, :uchar,
           :majorgc_old_threshold, :ulong,
           :mems, AllocaHeader.by_ref,
           :symidx, :short,
           :name2sym, KhN2s.by_ref,
           :e_exception_class, RClass.by_ref,
           :e_standard_error_class, RClass.by_ref,
           :ud, :pointer
  end

end
