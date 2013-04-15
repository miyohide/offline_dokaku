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
end
