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
         counter_result += ',' unless counter_result.empty?

         case c
         when 's'
            strike_count += 1
            if strike_count == 3
               strike_count = ball_count = 0
               out_count += 1
            end
            out_count = 0 if out_count == 3
         when 'b'
            ball_count += 1
            if ball_count == 4
               strike_count = ball_count = 0
            end
         when 'h'
            strike_count = ball_count = 0
         when 'f'
            strike_count += 1 if strike_count < 2
         when 'p'
            strike_count = ball_count = 0
            out_count += 1
            out_count = 0 if out_count == 3
         end
         counter_result += "#{out_count}#{strike_count}#{ball_count}"
      end
      counter_result
   end

end

