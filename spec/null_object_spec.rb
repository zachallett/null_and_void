require 'rspectacular'
require 'null_and_void/null_object'

describe NullAndVoid::NullObject do
  it 'is a singleton' do
    NullAndVoid::NullObject.instance == NullAndVoid::NullObject.instance
  end
end
