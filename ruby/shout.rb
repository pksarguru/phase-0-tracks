# module Shout
#   def self.yell_angrily(words)
#     words.upcase + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words.upcase + "!!!" + " :)"
#   end

# end

module Shout
  def yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def yell_happily(words)
    words.upcase + "!!!" + " :)"
  end

end

class Dad
  include Shout
end

class Mom
  include Shout
end



# Driver Code

dad = Dad.new
p dad.yell_happily("I'm dad")
p dad.yell_angrily("I'm dad")

mom = Mom.new
p mom.yell_angrily("I'm mom")
p mom.yell_happily("I'm mom")