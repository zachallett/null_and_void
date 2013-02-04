require 'singleton'
require 'null_and_void/stubbable'
require 'null_and_void/convertible'
require 'null_and_void/introspectable'

module NullAndVoid
  module Nullified
    def self.included(base)
      base.send(:include, Singleton)
      base.send(:include, Stubbable)
      base.send(:include, Convertible)
      base.send(:include, Falsifiable)
      base.send(:include, Introspectable)
    end
  end
end
