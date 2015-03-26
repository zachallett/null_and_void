require 'rspectacular'
require 'null_and_void/introspectable'

class MyNullObject
  include NullAndVoid::Introspectable
end

describe NullAndVoid::Introspectable do
  let(:null_object) { MyNullObject.new }

  it 'knows it is a null object' do
    expect(null_object).to be_null_object
  end

  it 'can inspect itself' do
    expect(null_object.inspect).to match(/\A#<MyNullObject:0x[a-f0-9]{4,12}>\z/)
  end
end
