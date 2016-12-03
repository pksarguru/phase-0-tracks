class Game
  attr_reader :guesses, :word, :line, :guessed_arr
  def initialize(word)
    @word = word.split("")
    @guesses = word.length * 2
    @line = (@word.map {|x| x = "_"}).join(" ")
    @guessed_arr = []
  end

  # def feedback
  #   line = p "_ " * @word.length
  #   line
  # end

  def make_a_guess(letter)
    if @word.include?(letter)
      @line
      # @word.index(letter)
      # @line = ("_ ")
    else
      @line
    end
    @guessed_arr << letter
    @guesses = @guesses - 1
  end




end