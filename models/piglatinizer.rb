require_relative 'config/environment'

class PigLatinizer

  def initialize(string)
    @words = string.split(" ")
  end
end
