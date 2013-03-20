# coding: utf-8

require './lib/binary_digit_rotate'

describe BinaryDigitRotate do
   describe '3:5b8 calc' do
      subject { BinaryDigitRotate.new('3:5b8').calc }
      it { should eq '3:de0' }
   end
end

