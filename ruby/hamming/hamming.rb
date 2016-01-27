class Hamming

  def self.compute(input_1, input_2)

    comp_1 = input_1.split("")
    comp_2 = input_2.split("")

    comp_2_counter = 0
    hamming_difference = 0

    comp_1.each do |letter|
      if letter != comp_2[comp_2_counter]
        hamming_difference += 1
      end

      comp_2_counter += 1
    end

    if comp_1.length != comp_2.length
      raise ArgumentError.new("Not equal in length!")
    end

    return hamming_difference
  end

end