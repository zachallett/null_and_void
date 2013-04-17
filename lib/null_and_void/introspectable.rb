module NullAndVoid
  module Introspectable
    def null_object?
      true
    end

    def inspect
      "#<#{self.class.name}:0x#{(__id__ * 2).to_s(16)}>"
    end
  end
end
