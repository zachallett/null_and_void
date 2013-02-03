require 'singleton'

module NullAndVoid
  class NullObject
    include Singleton

    def method_missing(*args, &block)
      self
    end
  end
end
