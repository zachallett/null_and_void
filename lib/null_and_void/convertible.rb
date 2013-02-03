module NullAndVoid
  module Convertible
    def to_i
      0
    end

    alias :to_int :to_i
  end
end
