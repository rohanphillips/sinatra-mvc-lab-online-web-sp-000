
class PigLatinizer

  def initialize(string = "")
    @sentence = string
  end

  def result
    puts "here"
    result = @sentence.split(" ").map{|word|
      self.latinize(word)
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
