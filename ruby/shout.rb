# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end
# end

# # Driver code
# p Shout.yelling_happily("Happy, happy, joy, joy")
# p Shout.yell_angrily("Go to sleep")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!!!" + " :D"
  end
end

class Parent
  include Shout
end

class Child
  include Shout
end

mom = Parent.new
toddler = Child.new

p mom.yell_angrily("Don't touch that! Dangerious")
p toddler.yell_angrily("NOOOOOOOOOOOOOOO")
p mom.yelling_happily("Good job going potty")
p toddler.yelling_happily("Yay! Undies")