module NullAndVoid
  module Falsifiable
    def !
      true
    end

    def blank?
      true
    end

    def nil?
      true
    end

    def present?
      false
    end
  end
end
