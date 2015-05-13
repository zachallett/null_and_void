module NullAndVoid
  module Persistable
    def id
      nil
    end

    def readonly?
      true
    end

    def persisted?
      false
    end

    def new_record?
      true
    end

    def destroyed?
      true
    end

    def all
      []
    end

    def to_key
      []
    end

    def to_param
      ''
    end

    def valid?
      true
    end
  end
end
