module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :nlocals ::
  #   (Integer) Number of local variables
  # :nregs ::
  #   (Integer) Number of register variables
  # :flags ::
  #   (Integer)
  # :iseq ::
  #   (FFI::Pointer(*MrbCode))
  # :pool ::
  #   (MrbValue)
  # :syms ::
  #   (FFI::Pointer(*MrbSym))
  # :reps ::
  #   (FFI::Pointer(**MrbIrep))
  # :filename ::
  #   (String) debug info
  # :lines ::
  #   (FFI::Pointer(*Uint16T))
  # :debug_info ::
  #   (MrbIrepDebugInfo)
  # :ilen ::
  #   (Integer)
  # :plen ::
  #   (Integer)
  # :slen ::
  #   (Integer)
  # :rlen ::
  #   (Integer)
  # :refcnt ::
  #   (Integer)
  class MrbIrep < FFI::Struct
    layout :nlocals, :ushort,
           :nregs, :ushort,
           :flags, :uchar,
           :iseq, :pointer,
           :pool, MrbValue.by_ref,
           :syms, :pointer,
           :reps, :pointer,
           :filename, :string,
           :lines, :pointer,
           :debug_info, MrbIrepDebugInfo.by_ref,
           :ilen, :ulong,
           :plen, :ulong,
           :slen, :ulong,
           :rlen, :ulong,
           :refcnt, :ulong
  end

end
