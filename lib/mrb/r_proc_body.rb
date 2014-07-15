module Mruby
  # (Not documented)
  #
  # ## Fields:
  # :irep ::
  #   (MrbIrep)
  # :func ::
  #   (Proc(callback_mrb_func_t))
  class RProcBody < FFI::Union
    layout :irep, MrbIrep.by_ref,
           :func, :mrb_func_t
  end

end
