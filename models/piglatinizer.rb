require_relative 'config/environment'

class PigLatinizer

  def initialize(string = "")
    @sentence = string
  end

  def self.result
    result = @sentence.split(" ").map{|word|
      latinize(word)
    }
    result.join(" ")
  end

  def latinize(word)
    vowels = "aeiou"
    case vowels.include?(word.first)
      when true

      when false

    end
  end
end
