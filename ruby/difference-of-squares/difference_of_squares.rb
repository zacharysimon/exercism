class Squares
  VERSION = 1

  def initialize(arg)
    @max = arg
  end

  def square_of_sums
    sum = 0
    max = @max

    max.times do
      sum += max
      max -= 1
    end

    sum ** 2
  end

  def sum_of_squares
    sum = 0
    max = @max 

    max.times do 
      sum += (max ** 2)
      max -= 1
    end

    sum
  end

  def difference
    square_of_sums - sum_of_squares
  end

end