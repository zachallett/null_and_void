require 'rspectacular'
require 'null_and_void/model_support'

module FooBar
  class MyNullableModel
    include NullAndVoid::ModelSupport
  end

  class NullMyNullableModel
    include NullAndVoid::Nullified
  end
end

class NonNullableModel
  include NullAndVoid::ModelSupport
end

describe NullAndVoid::ModelSupport do
  let(:model) { FooBar::MyNullableModel.new }

  it 'can convert a model into its Null Object if it exists' do
    expect(model.as_null_object).to be_a FooBar::NullMyNullableModel
  end

  it "can convert the model's class into its Null Object if it exists" do
    expect(model.class.as_null_object).to be_a FooBar::NullMyNullableModel
  end

  it 'can convert a model into a generic Null Object a model-specific Null Object ' \
     'does not exist' do

    expect(NonNullableModel.as_null_object).to be_a NullAndVoid::NullObject
  end
end
