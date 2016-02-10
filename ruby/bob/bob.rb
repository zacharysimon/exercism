class Bob

  def hey(remark)
    @remark = remark
    @remark_array = remark.split('')

    if yelling? 
      bobs_response = "Whoa, chill out!"
    elsif question? 
      bobs_response = "Sure."
    elsif saying_anything?
      bobs_response = "Fine. Be that way!"
    else bobs_response = "Whatever."
    end

  end

  def yelling?
    if @remark == @remark.upcase && has_letters?
      return_value = true
    end
  end

  def question? 
    if @remark_array[-1] == "?"
      return_value = true
    end
  end  

  def saying_anything?
    if !has_letters? && !has_numbers?
      return_value = true
    end
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