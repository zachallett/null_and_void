require 'rspectacular'
require 'null_and_void/maybe'

class MyObject
  include NullAndVoid::Maybe
end

describe NullAndVoid::Maybe do
  context 'when it is passed a nil' do
    it 'is a null object' do
      MyObject.new.maybe(nil).should be_a NullAndVoid::NullObject
    end
  end

  context 'when it is passed something other than nil' do
    it 'is the non-nil object' do
      MyObject.new.maybe(1).should eql 1
    end
  end
end
