# CLASS

class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    # @reindeer_ranking = ["Rudolph", "Dasher", "Dancer",
    #   "Prancer", "Vixen", "Comet", "Cupid", "Donner", 
    #   "Blitzen"]
    @age = 0
  end


  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def print
      puts "Gender: #{@gender}"
      puts "Ethnicity: #{@ethnicity}"
      puts "Age: #{@age}"
  end


end

# INPUT

santas = []

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

# PRINT OUTPUT

santas.each do |santa|
  santa.print
end









