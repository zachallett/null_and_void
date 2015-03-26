require 'rspectacular'
require 'null_and_void/falsifiable'

class NullObject
  include NullAndVoid::Falsifiable
end

describe NullAndVoid::Falsifiable do
  let(:null_object) { NullObject.new }

  # rubocop:disable Style/DoubleNegation
  it 'can be double inverted to be false' do
    expect(!!null_object).to eql false
  end
  # rubocop:enable Style/DoubleNegation

  it 'is blank' do
    expect(null_object).to be_blank
  end

  it 'is nil' do
    expect(null_object).to be_nil
  end

  it 'is not present' do
    expect(null_object).not_to be_present
  end
end
