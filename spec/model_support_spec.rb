require 'rspectacular'
require 'null_and_void/model_support'

module FooBar
  class MyNullableModel
    include NullAndVoid::ModelSupport
  end
end

describe NullAndVoid::ModelSupport do
  let(:model) { FooBar::MyNullableModel.new }
end
