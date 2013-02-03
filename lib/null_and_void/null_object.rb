require 'singleton'
require 'null_and_void/stubbable'
require 'null_and_void/convertible'
require 'null_and_void/falsifiable'

module NullAndVoid
  class NullObject
    include Singleton
    include Stubbable
    include Convertible
    include Falsifiable
  end
end
