class Phrase
  VERSION = 1

  def initialize(phrase)
    phrase.gsub!(/[!@#$%^&=_|;:,.<>?]/i, ' ')
    @phrase_array = phrase.downcase.split(" ")   
  end

  def clean_up_phrase

    @phrase_array.each do |word|
      word.split('')
      if word[0] && word[-1] == "'"
        word.slice!(0)
        word.slice!(-1)
      end
    end
    
  end

  def word_count
    clean_up_phrase

    frequency = Hash.new(0)

    @phrase_array.each do |word|
      frequency[word] += 1
    end

    frequency
  end
end