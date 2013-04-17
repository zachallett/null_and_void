require 'active_support/inflector/methods'

module NullAndVoid
  module Convertible
    def to_i
      0
    end

    def to_c
      Complex(0)
    end

    alias :to_int :to_i

    def to_f
      0.0
    end

    def rationalize(*args)
      Rational(0)
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

    def to_json
      'null'
    end

    def to_xml
      ''
    end

    def to_s
      ''
    end

    def to_model
      base_path         = ActiveSupport::Inflector.demodulize(self.class.name)
      module_path       = ActiveSupport::Inflector.deconstantize(self.class.name)
      source_model      = base_path.gsub(/^Null/, '')
      source_model_path = "#{module_path}::#{source_model}"

      ActiveSupport::Inflector.constantize(source_model_path).new
    end
  end
end
