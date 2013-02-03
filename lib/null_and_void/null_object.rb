require 'singleton'
require 'null_and_void/stubbable'
require 'null_and_void/convertible'

module NullAndVoid
  class NullObject
    include Singleton
    include Stubbable
    include Convertible
  end
end
