require 'singleton'
require 'null_and_void/stubbable'
require 'null_and_void/convertible'
require 'null_and_void/falsifiable'

module NullAndVoid
  module Nullified
    def self.included(base)
      base.send(:include, Singleton)
      base.send(:include, Stubbable)
      base.send(:include, Convertible)
      base.send(:include, Falsifiable)
    end
  end
end
