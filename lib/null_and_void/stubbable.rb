module NullAndVoid
  module Stubbable
    def method_missing(*args, &block)
      self
    end
  end
end
