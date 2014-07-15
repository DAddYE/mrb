module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :mid ::
  #   (Integer)
  # :proc ::
  #   (RProc)
  # :stackidx ::
  #   (Integer)
  # :nregs ::
  #   (Integer)
  # :argc ::
  #   (Integer)
  # :pc ::
  #   (FFI::Pointer(*MrbCode)) return address
  # :err ::
  #   (FFI::Pointer(*MrbCode)) error position
  # :acc ::
  #   (Integer)
  # :target_class ::
  #   (RClass)
  # :ridx ::
  #   (Integer)
  # :eidx ::
  #   (Integer)
  # :env ::
  #   (REnv)
  class MrbCallinfo < FFI::Struct
    layout :mid, :short,
           :proc, RProc.by_ref,
           :stackidx, :int,
           :nregs, :int,
           :argc, :int,
           :pc, :pointer,
           :err, :pointer,
           :acc, :int,
           :target_class, RClass.by_ref,
           :ridx, :int,
           :eidx, :int,
           :env, REnv.by_ref
  end

end
