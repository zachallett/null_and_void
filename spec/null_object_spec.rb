require 'rspectacular'
require 'null_and_void/null_object'

describe NullAndVoid::NullObject do
  let(:null_object) { NullAndVoid::NullObject.instance }

  it 'is a singleton' do
    null_object == NullAndVoid::NullObject.instance
  end

  it 'is stubbable' do
    expect(null_object).to be_a NullAndVoid::Stubbable
  end

  it 'is convertible' do
    expect(null_object).to be_a NullAndVoid::Convertible
  end

  it 'is falsifiable' do
    expect(null_object).to be_a NullAndVoid::Falsifiable
  end
end
