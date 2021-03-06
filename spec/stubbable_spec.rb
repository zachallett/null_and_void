require 'rspectacular'
require 'null_and_void/stubbable'

class NullObject
  include NullAndVoid::Stubbable
end

describe NullAndVoid::Stubbable do
  let(:null_object) { NullObject.new }

  it 'returns itself for all unknown method calls' do
    expect(null_object.foobar).to eql null_object
  end
end
