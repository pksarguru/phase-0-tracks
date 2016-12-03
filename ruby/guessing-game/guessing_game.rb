class Game
  attr_reader :guesses, :word, :line, :guessed_arr, :line_arr
  def initialize(word)
    @word = word.split("")
    @guesses = word.length * 2
    @line_arr = @word.map {|x| x = "_"}
    @line = @line_arr.join(" ")
    @guessed_arr = []
  end

  def make_a_guess(letter)
    if @guessed_arr.include?(letter)
      p "You've already guessed that."
    else
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

end

# user interface
game = Game.new("hat")
until game.guesses == 0 || game.line_arr == game.word
  p game.line
  p "You have #{game.guesses} guesses."
  p "Please guess a letter."
  letter = gets.chomp.downcase
  game.make_a_guess(letter)
  p game.line
end