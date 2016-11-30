class Santa

 #method that prints "Initializing Santa instance ..."
  def initialize
    p "Initializing Santa instance..."
  end

  #method that will print "Ho, ho, ho! Haaaappy holidays!"
  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  #method that takes a cookie type as a parameter and
  #prints "That was a good <type of cookie here>!"
  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

end

# Driver Code
# initialize
santa = Santa.new
# test speak
santa.speak
# test eat_milk_and_cookies, man do I want cookies!
santa.eat_milk_and_cookies("chocolate chip cookie")