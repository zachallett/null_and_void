require 'rspectacular'
require 'null_and_void/null_object'

describe NullAndVoid::NullObject do
  let(:null_object) { NullAndVoid::NullObject.instance }

  it 'is a singleton' do
    null_object == NullAndVoid::NullObject.instance
  end

  it 'returns itself for all unknown method calls' do
    null_object.foobar.should eql null_object
  end
end
