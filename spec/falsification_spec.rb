require 'rspectacular'
require 'null_and_void/falsification'

class NullObject
  include NullAndVoid::Falsification
end

describe NullAndVoid::Falsification do
  let(:null_object) { NullObject.new }
end
