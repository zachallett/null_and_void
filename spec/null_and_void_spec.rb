require 'rspectacular'
require 'null_and_void'

describe NullAndVoid do
  it 'can perform "maybies"' do
    NullAndVoid.maybe(nil).should be_a NullAndVoid::NullObject
  end
end
