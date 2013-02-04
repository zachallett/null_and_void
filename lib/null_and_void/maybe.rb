require 'null_and_void/null_object'

module NullAndVoid
  module Maybe
    def maybe(parameter)
      parameter.nil? ? NullAndVoid::NullObject.instance : parameter
    end
  end
end
