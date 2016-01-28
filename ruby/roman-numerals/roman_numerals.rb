class Fixnum
  VERSION = 1

  ROMAN_NUMERAL_SYMBOLS = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def to_roman
    roman_numeral = []
    number = self 

    ROMAN_NUMERAL_SYMBOLS.each do |value, symbol|
      while number >= value 
        roman_numeral << symbol
        number = number - value
      end
    end

    roman_numeral.join("")
  end

end