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
    null_object.to_i.should be_an Integer
    null_object.to_i.should be_zero

    null_object.to_int.should be_an Integer
    null_object.to_int.should be_zero
  end

  it 'is zero when the attempt is made to convert it to a Float' do
    null_object.to_f.should be_a Float
    null_object.to_f.should be_zero
  end

  it 'is zero when the attempt is made to convert it to a Rational' do
    null_object.to_r.should be_a Rational
    null_object.to_r.should be_zero
  end

  it 'is an empty Array when the attempt is made to convert it to an Array' do
    null_object.to_a.should   eql []
    null_object.to_ary.should eql []
  end

  it 'is an empty Hash when the attempt is made to convert it to an Hash' do
    null_object.to_hash.should eql Hash.new
  end

  it 'is an empty String when the attempt is made to convert it to HTML' do
    null_object.to_html.should eql ''
  end

  it 'is an empty String when the attempt is made to convert it to JSON' do
    null_object.to_json.should eql 'null'
  end

  it 'is an empty String when the attempt is made to convert it to XML' do
    null_object.to_xml.should eql ''
  end

  it 'is an empty String when the attempt is made to convert it to a String' do
    null_object.to_s.should eql ''
  end

  it 'is the class the Null Object is based on when the attempt is made to convert it to a value object' do
    null_object.to_model.should be_a FooBar::Object
  end

  it 'raises an error if the model the Null Object is based on does not exist' do
    expect { FooBar::NullBaz.new.to_model }.to raise_error NameError
  end
end
