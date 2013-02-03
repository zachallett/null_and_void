require 'rspectacular'
require 'null_and_void/falsification'

class NullObject
  include NullAndVoid::Falsification
end

describe NullAndVoid::Falsification do
  let(:null_object) { NullObject.new }

  it 'can be double inverted to be false' do
    (!!null_object).should be_false
  end

  it 'is blank' do
    null_object.should be_blank
  end

  it 'is nil' do
    null_object.should be_nil
  end

  it 'is not present' do
    null_object.should_not be_present
  end
end
