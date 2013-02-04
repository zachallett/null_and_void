require 'singleton'
require 'null_and_void/stubbable'
require 'null_and_void/convertible'
require 'null_and_void/falsifiable'
require 'null_and_void/introspectable'

module NullAndVoid
  module Nullified
    def self.included(base)
      base.send(:include, Singleton)
      base.send(:include, ::NullAndVoid::Stubbable)
      base.send(:include, ::NullAndVoid::Convertible)
      base.send(:include, ::NullAndVoid::Falsifiable)
      base.send(:include, ::NullAndVoid::Introspectable)
    end
  end
end
