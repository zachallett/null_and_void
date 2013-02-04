require 'null_and_void/null_object'

module NullAndVoid
  def self.maybe(parameter)
    parameter.nil? ? NullAndVoid::NullObject.instance : parameter
  end
end
