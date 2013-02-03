module NullAndVoid
  module Convertible
    def to_i
      0
    end

    alias :to_int :to_i

    def to_f
      0.0
    end

    def to_r
      Rational(0)
    end

    def to_a
      Array.new
    end

    alias :to_ary :to_a

    def to_hash
      Hash.new
    end

    def to_html
      ''
    end
  end
end
