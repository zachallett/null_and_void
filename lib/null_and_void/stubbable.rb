module NullAndVoid
  module Stubbable
    def method_missing(*_args, &_block)
      self
    end
  end
end
