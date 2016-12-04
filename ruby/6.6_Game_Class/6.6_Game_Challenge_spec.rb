require_relative '6.6_Game_Challenge'

describe GuessGame do
  let(:game) {GuessGame.new}

  it "test initial display array" do
    expect(game.initial_display('ftw')).to match_array [" _ ", " _ ", " _ "]
  end

  it "increments guess count when unguessed letter is submitted" do
    game_count = GuessGame.new
    game_count.guessed_letters = ['a', 'b', 'c']
    expect(game_count.increment_guess('d')).to eq 1
  end

  it "identifies letter in secret word array" do 
    game_count = GuessGame.new
    game_count.secret_array = ['a','b','c']
    game_count.guess_progress('b')
    expect(game_count.letter_found).to be true
  end 

  it "doesn't increment guess count on found letter" do 
    game_count = GuessGame.new
    game_count.secret_array = ['a','b','c']
    game_count.guess_progress('b')
    expect(game_count.guess_count).to eq 0
  end 

  it "returns correct progress of guesses" do 
    game_progress = GuessGame.new
    game_progress.secret_array = ['a', 'b', 'c']
    game_progress.display_array = [' _ ', ' _ ', ' c ']
    game_progress.guess_progress('a')
    expect(game_progress.display_array).to match_array [' a ', ' _ ', ' c ']
  end

  it "returns congratulations on completed guess" do 
    game_complete = GuessGame.new
    game_complete.secret_array = ['a', 'b', 'c']
    game_complete.display_array = ['a', 'b', ' _ ']
    game_complete.guess_progress('c')
    expect(game_complete.is_over).to be true
  end



end