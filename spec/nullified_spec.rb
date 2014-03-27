require 'rspectacular'
require 'null_and_void/null_object'
require 'null_and_void/nullified'

class NullWidget
  include NullAndVoid::Nullified

  def my_null_object_method
    'i am null'
  end
end

describe NullAndVoid::Nullified do
  let(:null_object) { NullWidget.instance }

  it 'is a singleton' do
    null_object == NullWidget.instance
  end

  it 'is not a NullAndVoid::NullObject singleton' do
    null_object != NullAndVoid::NullObject.instance
  end

  it 'handles undefined methods' do
    expect(null_object.foobar).to eql NullWidget.instance
  end

  it 'handles conversions' do
    expect(null_object.to_a).to eql []
  end

  it 'is falsifiable' do
    expect((!!null_object)).to eql false
  end

  it 'can implement its own methods' do
    expect(null_object.my_null_object_method).to eql 'i am null'
  end
end
