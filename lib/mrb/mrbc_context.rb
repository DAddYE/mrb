module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :syms ::
  #   (FFI::Pointer(*MrbSym))
  # :slen ::
  #   (Integer)
  # :filename ::
  #   (String)
  # :lineno ::
  #   (Integer)
  # :partial_hook ::
  #   (FFI::Pointer(*))
  # :partial_data ::
  #   (FFI::Pointer(*Void))
  # :target_class ::
  #   (RClass)
  # :capture_errors ::
  #   (Integer)
  # :dump_result ::
  #   (Integer)
  # :no_exec ::
  #   (Integer)
  class MrbcContext < FFI::Struct
    layout :syms, :pointer,
           :slen, :int,
           :filename, :string,
           :lineno, :short,
           :partial_hook, :pointer,
           :partial_data, :pointer,
           :target_class, RClass.by_ref,
           :capture_errors, :uchar,
           :dump_result, :uchar,
           :no_exec, :uchar
  end

end
