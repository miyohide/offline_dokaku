# coding: utf-8

require './lib/binary_digit_rotate'

describe BinaryDigitRotate do
   describe '3:5b8' do
      let(:input_data) { '3:5b8' }
      describe 'calc_side' do
         subject { BinaryDigitRotate.new(input_data).send(:calc_side) }
         it { should eq '3' }
      end

      describe 'calc' do
         subject { BinaryDigitRotate.new(input_data).calc }
         it { should eq '3:de0' }
      end
   end

end

