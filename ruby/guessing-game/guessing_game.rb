class Game
  attr_reader :guesses, :word, :line, :guessed_arr
  def initialize(word)
    @word = word.split("")
    @guesses = word.length * 2
    @line_arr = (@word.map {|x| x = "_"})
    @line = @line_arr.join(" ")
    @guessed_arr = []
  end

  # def feedback
  #   line = p "_ " * @word.length
  #   line
  # end

  def make_a_guess(letter)
    if @word.include?(letter)
      @line_arr.delete_at(@word.index(letter))
      @line_arr.insert(@word.index(letter), letter)
      @line = @line_arr.join(" ")
    else
      @line
    end
    @guessed_arr << letter
    @guesses = @guesses - 1
  end




end