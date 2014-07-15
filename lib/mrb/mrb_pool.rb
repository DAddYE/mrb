module Mruby
  # memory pool implementation
  module MrbPoolWrappers
    # @return [nil]
    def close()
      Mruby.mrb_pool_close(self)
    end

    # @param [Integer] u_long
    # @return [FFI::Pointer(*Void)]
    def alloc(u_long)
      Mruby.mrb_pool_alloc(self, u_long)
    end

    # @param [FFI::Pointer(*Void)] void
    # @param [Integer] oldlen
    # @param [Integer] newlen
    # @return [FFI::Pointer(*Void)]
    def realloc(void, oldlen, newlen)
      Mruby.mrb_pool_realloc(self, void, oldlen, newlen)
    end

    # @param [FFI::Pointer(*Void)] void
    # @param [Integer] u_long
    # @return [Integer]
    def can_realloc(void, u_long)
      Mruby.mrb_pool_can_realloc(self, void, u_long)
    end
  end

  class MrbPool < FFI::Struct
    include MrbPoolWrappers
    layout :dummy, :char
  end

end
