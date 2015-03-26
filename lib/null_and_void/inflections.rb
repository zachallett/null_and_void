# rubocop:disable Lint/AssignmentInCondition, Metrics/CyclomaticComplexity
# rubocop:disable Metrics/LineLength, Metrics/PerceivedComplexity, Style/EachWithObject
module    NullAndVoid
module    Inflections
  def self.demodulize(path)
    path = path.to_s
    if i = path.rindex('::')
      path[(i + 2)..-1]
    else
      path
    end
  end

  def self.deconstantize(path)
    path.to_s[0, path.rindex('::') || 0] # implementation based on the one in facets' Module#spacename
  end

  def self.constantize(camel_cased_word)
    names = camel_cased_word.split('::')

    # Trigger a builtin NameError exception including the ill-formed constant in the message.
    Object.const_get(camel_cased_word) if names.empty?

    # Remove the first blank element in case of '::ClassName' notation.
    names.shift if names.size > 1 && names.first.empty?

    names.reduce(Object) do |constant, name|
      if constant == Object
        constant.const_get(name)
      else
        candidate = constant.const_get(name)
        next candidate if constant.const_defined?(name, false)
        next candidate unless Object.const_defined?(name)

        # Go down the ancestors to check it it's owned
        # directly before we reach Object or the end of ancestors.
        constant = constant.ancestors.reduce do |const, ancestor|
          break const    if ancestor == Object
          break ancestor if ancestor.const_defined?(name, false)
          const
        end

        # owner is in Object, so raise
        constant.const_get(name, false)
      end
    end
  end
end
end
# rubocop:enable Lint/AssignmentInCondition, Metrics/CyclomaticComplexity
# rubocop:enable Metrics/LineLength, Metrics/PerceivedComplexity, Style/EachWithObject
