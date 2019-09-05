
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
        #if contains_vowels
            #binding.pry
            last_part = word.slice(first_vowel_location(word, vowels), word.size)
            return last_part + vowels_split[0] + "ay"
        #else

        #end
    end
  end

  def first_vowel_location(word, vowels)
    word.split("").each.with_index do |i, index|
      if vowels.include?(i)
        return index
      end
    end
  end

end
