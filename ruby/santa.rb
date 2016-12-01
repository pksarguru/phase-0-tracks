class Santa
attr_accessor :age

 #method that prints "Initializing Santa instance ..."
  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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
# santa = Santa.new
# test speak
# santa.speak
# test eat_milk_and_cookies, man do I want cookies!
# santa.eat_milk_and_cookies("chocolate chip cookie")

# more test code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
p santas




