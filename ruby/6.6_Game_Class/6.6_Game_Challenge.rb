# Pseudocode:

# Function: 

# One user enters a secret word
# Second user is shown a number of dashes equal to the length of the word
# Prompt tells them they have guesses remaining equal to length of word
# Prompt tell them they can guess a letter or solve the word
#   should give remaining guess counts and then display message when done

# Get user input

# Send input to method to separate into array
# method that creates dashes and then keeps track of guesses
#   contain input array and iterate through and compare to guess
#   should be permanent and not reset every time
#   increases guess count every time the method is run

# refer to method that checks if a letter or word

# Methods
class GuessGame
  attr_accessor :secret_array, :display_array, :is_over, :guess_count,
                :guessed_letters, :letter_found

  def initialize 
    @guess_count = 0
    @is_over = false
    @secret_array = []
    @display_array = []
    @guessed_letters = []
    @letter_found = false
    @letter = true
  end

  def initial_display(secret_word)
    secret_word.length.times do 
      @display_array << " _ "
    end
    @display_array
  end

  def process_secret(secret_word)
    @secret_array = secret_word.split('')
  end

  def increment_guess(user_guess)
    if !@guessed_letters.include?(user_guess) && !@letter_found && @letter
      @guess_count += 1
    end
    @guessed_letters << user_guess
    puts "You have #{@secret_array.count - @guess_count} guesses left"
    @guess_count
  end

# check if letter or word
  def check_letter(user_guess)
    @letter = user_guess.length == 1
  end


# check if guess is in array, doesn't increment 

  def guess_progress(user_guess)
    @letter_found = false
    check_letter(user_guess)

    @secret_array.each_index do |i|
      if !@letter
        puts "Invalid input. Please input a letter"
        @letter_found = true
        break
      elsif @secret_array[i] == user_guess 
        @display_array[i] = " #{user_guess} "
        @letter_found = true
      end
    end

    puts "Sorry. '#{user_guess}' is not in the secret word" if !@letter_found

    if !check_finish
      increment_guess(user_guess)
    end 

    @display_array
    @is_over
  end 

# Check for end condition: solved/out of guesses

  def check_finish
    if @display_array.count(' _ ') == 0
      puts "Congratulations! You've solved it!"
      @is_over = true
    elsif @guess_count == (@secret_array.count-1)
      @is_over = true
      puts "Sorry. You ran out of guesses."
    else
      @is_over = false
    end

    @is_over
  end

  def print_array(array)
    array.each do |i|
      print i
    end
    puts
  end

end



# Drive Code/User Interface:
game = GuessGame.new
puts "First user: input a secret word"
secret_word = gets.chomp
system('clear')

puts "Second user: time to guess the secret word."
secret_word_array = game.process_secret(secret_word)
initial_display = game.initial_display(secret_word)
game.print_array(game.display_array)

puts "You have #{secret_word.length} guesses."

while !game.is_over

  puts "Input a letter or a word."
  user_guess = gets.chomp

  system('clear')

  game.guess_progress(user_guess)
  game.print_array(game.display_array)

end





