
class PigLatinizer

  def initialize(string = "")
    @sentence = string
  end

  def result
    binding.pry
    collection = []
    result = @sentence.split(" ").map{|word|
      #collection << latinize(word)
    }
    result.join(" ")
  end

  def self.latinize(word)
    vowels = "aeiou"
    case vowels.include?(word.first)
      when true

      when false
        collection = word.split(/[aeiou]/)
        binding.pry
    end
  end
end
