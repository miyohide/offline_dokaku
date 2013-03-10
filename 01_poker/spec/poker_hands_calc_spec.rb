# coding: utf-8

require 'rspec'
require 'poker_hands_calc'

describe PokerHandsCalc do

   context 'C9D9CAH8S5' do
      subject { PokerHandsCalc.new('C9D9CAH8S5').calc }
      it '1P' do
         should eq '1P'
      end
   end
   
   context 'C9D9CAH8SA' do
      subject { PokerHandsCalc.new('C9D9CAH8SA').calc }
      it '2P' do
         should eq '2P'
      end
   end

   context 'C9D9C9H8SA' do
      subject { PokerHandsCalc.new('C9D9C9H8SA').calc }
      it '3K' do
         should eq '3K'
      end
   end

   describe 'cards' do
      context 'D3C3C10D10S3' do
         subject { PokerHandsCalc.new('D3C3C10D10S3').send(:cards) }
         it '%w(D3 C3 C10 D10 S3)' do
            should == %w(D3 C3 C10 D10 S3)
         end
      end
   end

   describe 'cards_by_sute_and_rank' do
      context 'D3C3C10D10S3' do
         subject { PokerHandsCalc.new('D3C3C10D10S3').send(:cards_by_sute_and_rank) }
         it "[{sute: 'D', rank: 3}, {sute: 'C', rank: 3}, {sute: 'C', rank: 10}, {sute: 'D', rank: 10}, {sute: 'S', rank: 3}]" do
            should == [{sute: 'D', rank: 3},
                       {sute: 'C', rank: 3},
                       {sute: 'C', rank: 10},
                       {sute: 'D', rank: 10},
                       {sute: 'S', rank: 3}]
         end
      end
   end
   
end

