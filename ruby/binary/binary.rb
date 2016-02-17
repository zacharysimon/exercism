class Binary

  VERSION = 1

  def initialize(number)
    check_number(number)
    @digits = number.split('').collect(&:to_i).reverse
  end

  def check_number(number)
    binary_digits = ["0","1"]
    number.split("").each do |num|
      raise ArgumentError.new("This be binary yo! Only 1 and 0") unless binary_digits.include?(num)
    end
  end

  def to_decimal
    number = 0
    @digits.each_with_index do |digit, index|
      number += digit * 2**index
    end

    number
  end

end