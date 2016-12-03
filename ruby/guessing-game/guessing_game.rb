class Game
  attr_reader :guesses, :word, :line
  def initialize(word)
    @word = word.split("")
    @guesses = word.length * 2
    @line = ("_ " * (@word.length - 1)) + ("_")
  end

  # def feedback
  #   line = p "_ " * @word.length
  #   line
  # end

  # def make_a_guess(letter)
  #   if @word.include?(letter)

  #   else
  #     feedback
  #   end
  #   @guesses = @guesses -1
  # end




end