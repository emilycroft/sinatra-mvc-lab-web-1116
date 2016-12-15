require 'pry'

class PigLatinizer

  def to_pig_latin(string)
    words = string.split(" ")
    words.map! do |word|
      piglatinize(word)
    end
    words.join(" ")
  end

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    letters = word.split("")

    result = letters.clone
    letters.each_with_index do |letter|
      if vowels.include?(letter)
        break
      else
        l = result.shift
        result << l
      end
    end

    if result == letters
      result << "w"
    end

    result << "ay"
    result.join("")
  end
end
