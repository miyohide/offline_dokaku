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
   
   describe 'psbpfpbp' do
      let(:input_data) { 'psbpfpbp' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '100,110,111,200,210,000,001,100' }
      end
   end
   
   describe 'ppp' do
      let(:input_data) { 'ppp' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '100,200,000' }
      end
   end
   
   describe 'ffffs' do
      let(:input_data) { 'ffffs' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '010,020,020,020,100' }
      end
   end
   
   describe 'ssspfffs' do
      let(:input_data) { 'ssspfffs' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '010,020,100,200,210,220,220,000' }
      end
   end
   
   describe 'bbbsfbppp' do
      let(:input_data) { 'bbbsfbppp' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '001,002,003,013,023,000,100,200,000' }
      end
   end
   
   describe 'sssbbbbsbhsbppp' do
      let(:input_data) { 'sssbbbbsbhsbppp' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '010,020,100,101,102,103,100,110,111,100,110,111,200,000,100' }
      end
   end
   
   describe 'ssffpffssp' do
      let(:input_data) { 'ssffpffssp' }
      describe 'counter' do
         subject { BallCount.new(input_data).counter }
         it { should eq '010,020,020,020,100,110,120,200,210,000' }
      end
   end
end

