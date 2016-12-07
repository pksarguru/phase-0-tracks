require 'io/console'

class Game
  attr_reader :guesses, :word, :line, :guessed_arr, :line_arr
  def initialize(word)
  # def initialize(args = {})
    # pulls from the defaults method and then merge changes that my be passed in in the args hash
    # args = defaults.merge(args)
    # line 9 pulled from the defaults unless it is changed upon initialization
    # word = args[:word]
    # @word = args[:word].split("")
    @word = word.split("")
    @guesses = @word.length * 2
    #playing with code @guesses = @word.length * args[:guess_limit]
    @line_arr = @word.map {|x| "_"}
    @line = @line_arr.join(" ")
    @guessed_arr = []
  end

  # If I was going to set it up so that you used defaults this is the code I'd use:
  # def defaults
  #   return {word: "unicorn", guess_limit: 5}
  # end

  def make_a_guess(letter)
    if @guessed_arr.include?(letter)
      p "You've already guessed that."
      return
    end

    if @word.include?(letter)
      replace_arr = @word.each_index.select{|i| @word[i] == letter}
      replace_arr.reverse.each {|x| @line_arr.delete_at(x)}
      replace_arr.each {|x| line_arr.insert(x, letter)}
      @line = @line_arr.join(" ")
    else
      @line
    end
    @guessed_arr << letter
    @guesses = @guesses - 1

  end

end

# user interface
puts "Player one, please input a word."
game = Game.new(STDIN.noecho(&:gets).chomp)
#game = Game.new({word: STDIN.noecho(&:gets).chomp})
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

# game = Game.new({word: "hat", guess_limit: 2})
# p game.line
# game.make_a_guess("b")
# p game.line
# game.make_a_guess("a")
# p game.line
# game.make_a_guess("w")
# game.make_a_guess("w")
# p game.line
# game.make_a_guess("t")
# p game.line
# game.make_a_guess("m")
# p game.line
