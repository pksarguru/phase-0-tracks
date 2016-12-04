require_relative '6.6_Game_Challenge'

describe GuessGame do
  let(:game) {GuessGame.new}

  it "test initial display array" do
    expect(game.initial_display('ftw')).to match_array [" _ ", " _ ", " _ "]
  end

  it "test increment of guess count" do
    game_count = GuessGame.new
    game_count.guessed_letters = ['a', 'b', 'c']
    expect(game_count.increment_guess('d')).to eq


end