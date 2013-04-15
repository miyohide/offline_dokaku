# coding: utf-8

class BallCount
   def initialize(ball_string)
      @ball_string = ball_string
   end

   def counter
      counter_result = ''

      strike_count = 0
      ball_count = 0
      out_count = 0
      @ball_string.each_char do |c|
         case c
         when 's'
            counter_result += ',' unless counter_result.empty?
            strike_count += 1
            if strike_count == 3
               strike_count = ball_count = 0
               out_count += 1
            end
            counter_result += "#{out_count}#{strike_count}#{ball_count}"
         when 'b'

         end
      end
      counter_result
   end

end

