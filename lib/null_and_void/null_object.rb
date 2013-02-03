require 'singleton'
require 'null_and_void/stubbable'

module NullAndVoid
  class NullObject
    include Singleton
    include Stubbable
  end
end
