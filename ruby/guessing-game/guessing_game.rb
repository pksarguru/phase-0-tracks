class Game
  attr_reader :guesses, :word
  def initialize(word)
    @word = word.split("")
    @guesses = word.length * 2
  end

  def feedback
    line = p "_ " * @word.length
    line
  end

#   def make_a_guess("a")


end