module Shout
  def self.yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + "!!!" + " :)"
  end

end

# Driver Code

p Shout.yell_angrily("I'm angry")

p Shout.yell_happily("I'm happy")