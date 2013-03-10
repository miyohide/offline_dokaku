# coding: utf-8

class PokerHandsCalc
   @card_string = ''
   def initialize(card_string)
      @card_string = card_string
   end

   def calc
      if three_of_a_kind?
         '3K'
      elsif two_pair?
         '2P'
      elsif one_pair?
         '1P'
      else
         '--'
      end
   end

   private
   def cards
      list = []
      @card_string.gsub(/[SHDC][0-9AJQK]{1,2}/){ |s| list << s }
      list
   end

   def cards_by_sute_and_rank
      map = []
      cards().map do |card|
         matched = /([SHDC])([0-9AJQK]{1,2})/.match(card).to_a
         rank = matched[2]
         case rank
         when 'A'
            rank = 1
         when 'J'
            rank = 11
         when 'Q'
            rank = 12
         when 'K'
            rank = 13
         else
            rank = rank.to_i
         end
         map << { sute: matched[1], rank: rank }
      end
      map
   end

   def card_ranks
      cards_by_sute_and_rank.map do |card|
         card[:rank]
      end
   end

   def rank_count(ranks)
      ranks.inject(Hash.new(0)) { |hash, rank| hash[rank] += 1; hash}
   end

   def one_pair?
      ranks = card_ranks
      ranks.uniq.size == 4
   end

   def two_pair?
      ranks = card_ranks
      ranks.uniq.size == 3
   end

   def three_of_a_kind?
      rank_count(card_ranks).values.include?(3)
   end

end

