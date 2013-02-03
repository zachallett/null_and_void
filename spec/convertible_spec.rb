require 'rspectacular'
require 'null_and_void/convertible'

class NullObject
  include NullAndVoid::Convertible
end

describe NullAndVoid::Convertible do
  let(:null_object) { NullObject.new }

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
    null_object.to_json.should eql ''
  end
end
