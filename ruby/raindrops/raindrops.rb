class Raindrops
  VERSION = 1

  def self.convert(input)
    rain = []

    raindrop_messages = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

    if input%3 == 0
      rain << raindrop_messages[3]
    end

    if input%5 == 0
      rain << raindrop_messages[5]
    end

    if input%7 == 0
      rain << raindrop_messages[7]
    end

    if rain[0] == nil 
      rain << "#{input}"
    end

    rain.join
  end
end