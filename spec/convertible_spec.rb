require 'rspectacular'
require 'null_and_void/convertible'

module FooBar
  class NullObject
    include NullAndVoid::Convertible
  end

  class NullBaz
    include NullAndVoid::Convertible
  end

  class Object
  end
end

describe NullAndVoid::Convertible do
  let(:null_object) { FooBar::NullObject.new }

  it 'is zero when the attempt is made to convert it to an Integer' do
    expect(null_object.to_i).to be_an Integer
    expect(null_object.to_i).to be_zero

    expect(null_object.to_int).to be_an Integer
    expect(null_object.to_int).to be_zero
  end

  it 'is zero when the attempt is made to convert it to a Complex number' do
    expect(null_object.to_c).to be_a Complex
    expect(null_object.to_c).to be_zero
  end

  it 'is zero when the attempt is made to convert it to a Float' do
    expect(null_object.to_f).to be_a Float
    expect(null_object.to_f).to be_zero
  end

  it 'is zero when the attempt is made to convert it to a Rational' do
    expect(null_object.to_r).to be_a Rational
    expect(null_object.to_r).to be_zero

    expect(null_object.rationalize).to be_a Rational
    expect(null_object.rationalize).to be_zero
  end

  it 'is an empty Array when the attempt is made to convert it to an Array' do
    expect(null_object.to_a).to   eql []
    expect(null_object.to_ary).to eql []
  end

  it 'is an empty Hash when the attempt is made to convert it to an Hash' do
    expect(null_object.to_hash).to eql Hash.new
  end

  it 'is an empty String when the attempt is made to convert it to HTML' do
    expect(null_object.to_html).to eql ''
  end

  it 'is an empty String when the attempt is made to convert it to JSON' do
    expect(null_object.to_json).to eql 'null'
  end

  it 'is an empty String when the attempt is made to convert it to XML' do
    expect(null_object.to_xml).to eql ''
  end

  it 'is an empty String when the attempt is made to convert it to a String' do
    expect(null_object.to_s).to eql ''
  end

  it 'is the class the Null Object is based on when the attempt is made to convert it to a value object' do
    expect(null_object.to_model).to be_a FooBar::Object
  end

  it 'raises an error if the model the Null Object is based on does not exist' do
    expect { FooBar::NullBaz.new.to_model }.to raise_error NameError
  end
end
