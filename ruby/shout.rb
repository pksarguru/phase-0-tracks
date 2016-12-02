module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end

# Driver code
p Shout.yelling_happily("Happy, happy, joy, joy")
p Shout.yell_angrily("Go to sleep")