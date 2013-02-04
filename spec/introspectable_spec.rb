require 'rspectacular'
require 'null_and_void/introspectable'

class MyNullOjbect
  include NullAndVoid::Introspectable
end

describe NullAndVoid::Introspectable do
  let(:null_object) { MyNullOjbect.new }

  it 'knows it is a null object' do
    null_object.should be_null_object
  end
end
