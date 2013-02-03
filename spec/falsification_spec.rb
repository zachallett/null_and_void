require 'rspectacular'
require 'null_and_void/falsification'

class NullObject
  include NullAndVoid::Falsification
end

describe NullAndVoid::Falsification do
  let(:null_object) { NullObject.new }

  it 'is blank' do
    null_object.should be_blank
  end
end
