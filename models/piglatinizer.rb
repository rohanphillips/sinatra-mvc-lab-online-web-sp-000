
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
    case vowels.include?(word.split.first)
      when true

      when false
        collection = word.split(/[aeiou]/)
    end
    binding.pry
  end

  def first_vowel_location(word)

  end
end
