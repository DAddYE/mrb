module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :prev ::
  #   (MrbContext)
  # :stack ::
  #   (MrbValue) stack of virtual machine
  # :stbase ::
  #   (MrbValue)
  # :stend ::
  #   (MrbValue)
  # :ci ::
  #   (MrbCallinfo)
  # :cibase ::
  #   (MrbCallinfo)
  # :ciend ::
  #   (MrbCallinfo)
  # :rescue_ ::
  #   (FFI::Pointer(**MrbCode)) exception handler stack
  # :rsize ::
  #   (Integer)
  # :ensure_ ::
  #   (FFI::Pointer(**RProc)) ensure handler stack
  # :esize ::
  #   (Integer)
  # :status ::
  #   (Symbol from `enum_mrb_fiber_state`)
  # :fib ::
  #   (RFiber)
  class MrbContext < FFI::Struct
    layout :prev, MrbContext.by_ref,
           :stack, MrbValue.by_ref,
           :stbase, MrbValue.by_ref,
           :stend, MrbValue.by_ref,
           :ci, MrbCallinfo.by_ref,
           :cibase, MrbCallinfo.by_ref,
           :ciend, MrbCallinfo.by_ref,
           :rescue_, :pointer,
           :rsize, :int,
           :ensure_, :pointer,
           :esize, :int,
           :status, :mrb_fiber_state,
           :fib, RFiber.by_ref
  end

end
