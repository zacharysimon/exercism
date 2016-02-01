class Robot
  attr_reader :name 

  def initialize
    @name = random_letters + random_numbers
  end 

  def reset 
    initialize 
  end

  def random_letters
    charset = Array('A'..'Z')
    Array.new(2) { charset.sample }.join()
  end

  def random_numbers
    [*0..9].sample(3).join()
  end

end