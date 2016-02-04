class Grains
  def self.square(chess_square)
    grains = 1

    (chess_square - 1).times do
      grains *= 2 
    end

    grains 
  end


  def self.total
    counter = 1
    total_grains = 0

    64.times do 
      total_grains += square(counter)
      counter += 1
    end

    total_grains 
  end
end