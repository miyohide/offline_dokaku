# coding: utf-8

require './lib/ball_count'

describe BallCount do
   describe 's' do
      let(:input_data) { 's' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '010' }
      end
   end
   
   describe 'sss' do
      let(:input_data) { 'sss' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '010,020,100' }
      end
   end
   
   describe 'bbbb' do
      let(:input_data) { 'bbbb' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '001,002,003,000' }
      end
   end
   
   describe 'ssbbbb' do
      let(:input_data) { 'ssbbbb' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '010,020,021,022,023,000' }
      end
   end
   
   describe 'hsbhfhbh' do
      let(:input_data) { 'hsbhfhbh' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '000,010,011,000,010,000,001,000' }
      end
   end
end

