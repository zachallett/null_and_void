require 'rspectacular'
require 'null_and_void/convertible'

class NullObject
  include NullAndVoid::Convertible
end

describe NullAndVoid::Convertible do
  let(:null_object) { NullObject.new }

  it 'is zero when the attempt is made to convert it to an Integer' do
    null_object.to_i.should be_an Integer
    null_object.to_i.should be_zero

    null_object.to_int.should be_an Integer
    null_object.to_int.should be_zero
  end
end
