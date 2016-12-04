# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# when you start the game have a word, a guess counter set based on word, and empty array of letters
# split word into letters
# print _ for each letter
# check that the guess hasn’t been guessed before
# check and see if a guess matches any of the letters in the word
# change _ to print the letter if correct
# enter the letter into a list of already guessed letters
# subtract one from the number of guesses

require_relative 'guessing_game'

describe Game do
  let(:game) {Game.new("unicorn")}
  it "check the number of guesses allowed" do
    expect(game.guesses).to eq 14
  end

  it "splits a word into an array" do
    expect(game.word[1]).to eq "n"
  end

  it "prints _ for each letter in array" do
    expect(game.line).to eq "_ _ _ _ _ _ _"
  end

  it "subtracts a guess if one is made" do
    game.make_a_guess("n")
    expect(game.guesses).to eq 13
  end

  it "add letter to guessed list" do
    game.make_a_guess("n")
    expect(game.guessed_arr).to eq ["n"]
  end

  it "deletes a _ and replaces with a letter wherever there is that letter" do
    game.make_a_guess("n")
    expect(game.line).to eq "_ n _ _ _ _ n"
  end

  it "does not count against you if you make the same guess" do
    game.make_a_guess("n")
    game.make_a_guess("n")
    expect(game.guesses).to eq 13
  end

end