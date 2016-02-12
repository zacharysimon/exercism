class FoodChain
  VERSION = 2

  LINES = [
    ['fly', "I don't know why she swallowed the fly. Perhaps she'll die."],
    ['spider', 'It wriggled and jiggled and tickled inside her.'],
    ['bird', 'How absurd to swallow a bird!'],
    ['cat', 'Imagine that, to swallow a cat!'],
    ['dog', 'What a hog, to swallow a dog!'],
    ['goat', 'Just opened her throat and swallowed a goat!'],
    ['cow', "I don't know how she swallowed a cow!"],
    ['horse', "She's dead, of course!"]
  ]

  def self.song
    @song = ""
    LINES.each_with_index do |food, index|
      new_verse(food, index)
      old_verses(food, index) if food != LINES[0] && food != LINES[-1]
    end
    @song
  end

  def self.new_verse(food, index)
    @song += "I know an old lady who swallowed a #{food[0]}." + "\n" 
    @song += food[1] + "\n"
  end

  def self.old_verses(food, index)
      
      counter = index

      index.times do
        @song += "She swallowed the #{LINES[counter][0]} to catch the #{(LINES[counter-1][0])}"

       
        if counter == 2
          @song += " that wriggled and jiggled and tickled inside her." + "\n"
        else @song += ".\n"
        end

         if counter == 1
            @song += "I don't know why she swallowed the fly. Perhaps she'll die." + "\n" + "\n" 
         end 
        
       counter -= 1
      end
  end
end


