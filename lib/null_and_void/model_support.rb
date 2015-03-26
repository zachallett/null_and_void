require 'null_and_void/inflections'
require 'null_and_void/null_object'

module NullAndVoid
  module ModelSupport
    module ClassMethods
      def as_null_object
        base_path         = NullAndVoid::Inflections.demodulize(name)
        module_path       = NullAndVoid::Inflections.deconstantize(name)
        null_object_base  = "Null#{base_path}"
        source_model_path = "#{module_path}::#{null_object_base}"

        NullAndVoid::Inflections.constantize(source_model_path).instance
      rescue NameError
        NullAndVoid::NullObject.instance
      end
    end

    def as_null_object
      self.class.as_null_object
    end

    def self.included(base)
      base.extend ClassMethods
    end
  end
end
