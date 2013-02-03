module NullAndVoid
  module Convertible
    def to_i
      0
    end

    alias :to_int :to_i

    def to_f
      0.0
    end
  end
end
