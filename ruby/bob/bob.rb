class Bob

  def hey(remark)
    @remark = remark
    @remark_array = remark.split('')

    return "Whoa, chill out!" if yelling?
    return "Sure." if question?
    return "Fine. Be that way!" if saying_anything?
    return "Whatever."

  end

  def yelling?
    return true if @remark == @remark.upcase && has_letters?
  end

  def question? 
    return true if @remark_array[-1] == "?"
  end  

  def saying_anything?
    return true if !has_letters? && !has_numbers?
  end

  def has_letters?
    return_value = false

    @remark_array.each do |letter|
      (('a'..'z').to_a).each do |test_letter|
        if test_letter == letter.downcase 
          return_value = true
        end
      end
    end

    return_value
  end

  def has_numbers?
    return_value = false

    @remark_array.each do |number|
      ((1..9).to_a).each do |test_number|
        if test_number.to_f == number.to_f
          return_value = true
        end
      end
    end

    return_value
  end

end