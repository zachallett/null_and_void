require 'rspectacular'
require 'null_and_void/convertible'

class NullObject
  include NullAndVoid::Convertible
end

describe NullAndVoid::Convertible do
  let(:null_object) { NullObject.new }
end
