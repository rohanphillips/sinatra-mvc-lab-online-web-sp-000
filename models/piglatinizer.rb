
class PigLatinizer

  def initialize(string = "")
    @sentence = string
  end

  def result
    #binding.pry
    collection = []
    result = @sentence.split(" ").map{|word| latinize(word) }
    result.join(" ")
  end

  private
  def latinize(word)
    vowels = "aeiou"
    vowels_split = word.split(/[aeiou]/)
    contains_vowels = vowels_split.size > 1
    case vowels.include?(word.split.first)
      when true
        return word + "way"
      when false
        if contains_vowels
            last_part = slice(first_vowel_location, word.size)
            binding.pry
        else

        end
    end
  end

  def first_vowel_location(word, vowels)
    word.split.size.each do |i|
      if vowels.include?(i)
        return i
      end
    end
  end
end
