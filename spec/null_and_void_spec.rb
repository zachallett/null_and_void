require 'rspectacular'
require 'null_and_void'

describe NullAndVoid do
  it 'can perform "maybies"' do
    expect(NullAndVoid.maybe(nil)).to be_a NullAndVoid::NullObject
  end
end
