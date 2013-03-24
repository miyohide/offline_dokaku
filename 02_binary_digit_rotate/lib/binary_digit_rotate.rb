# coding: utf-8

class BinaryDigitRotate
   def initialize(input)
      @binary_digit = input
   end

   def calc
      calc_side + ":" + calc_hex
   end

   private
   def calc_side
      @binary_digit.split(/:/)[0]
   end

   def calc_hex
      rotate(@binary_digit.split(/:/)[1])
   end

   def rotate(hex_str)
      digit_str = ''
      hex_str.each_char do |c|
         digit_str += "%04d" % c.to_i(16).to_s(2)
      end
      side = calc_side.to_i
      # 一辺の長さの文字ずつ区切る
      digit_str_list = digit_str.unpack("a#{side}"*(digit_str.size/side))

      digit_str_list = digit_str_list[0..side - 1]
      # 90度回転。
      digit_str_list.reverse!
      digit_str = ''
      side.times do |i|
         digit_str_list.each do |element|
            digit_str += element[i]
         end
      end

      # 足りない桁を0で埋める
      if digit_str.size < 4 * side
         digit_str += '0' * ( 4 * side - digit_str.size )
      end

      # 16進変換するために4桁ごとに区切る
      digit_str_list = digit_str.unpack("a4"*(digit_str.size/4))

      rotate_hex = ''
      digit_str_list.each do |digit|
         rotate_hex += digit.to_i(2).to_s(16)
      end

      rotate_hex

   end


end

