require 'io/console'

class Game
  attr_reader :guesses, :word, :line, :guessed_arr, :line_arr
  def initialize(word)
    @word = word.split("")
    @guesses = word.length * 2
    @line_arr = @word.map {|x| x = "_"}
    @line = @line_arr.join(" ")
    @guessed_arr = []
    @replace_arr = []
  end

  def make_a_guess(letter)
    if @guessed_arr.include?(letter)
      p "You've already guessed that."
    else
      if @word.include?(letter)
        @replace_arr = @word.each_index.select{|i| @word[i] == letter}
        @replace_arr.reverse.each {|x| @line_arr.delete_at(x)}
        @replace_arr.each {|x| line_arr.insert(x, letter)}
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
puts "Player one, please input a word."
game = Game.new(STDIN.noecho(&:gets).chomp)
while !(game.guesses == 0 || game.line_arr == game.word)
  p "You have #{game.guesses} guesses."
  p "Please guess a letter."
  letter = gets.chomp.downcase
  game.make_a_guess(letter)
  p game.line
end
if game.guesses == 0 && game.line_arr != game.word
  puts "Ha! Ha! You lose. The word you were looking for was #{game.word.join.upcase}!"
else
  puts "Huzzah! You won!"
end