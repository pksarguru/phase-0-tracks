# CLASS

class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age, :reindeer_ranking

  def initialize(gender, ethnicity, age)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer",
      "Prancer", "Vixen", "Comet", "Cupid", "Donner", 
      "Blitzen"]
    @age = age
  end


  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def print
      puts "-"*10
      puts "Gender: #{@gender}"
      puts "Ethnicity: #{@ethnicity}"
      puts "Age: #{@age}"
      puts "Reindeer Ranking:"
      @reindeer_ranking.length.times do |i|
        puts "#{i+1}: #{@reindeer_ranking[i]}"
      end
  end

  # setter methods

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at=(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end


end

# INPUT/DRIVER CODE

santas = []

genders = ["agender", "female", "bigender", "male", "female", 
  "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", 
  "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do |i|
  santas.push(Santa.new(genders.sample, ethnicities.sample, rand(140)))
end

santas.last.gender = "definitely female"
santas.last.get_mad_at = "Dancer"
santas.last.age = 205

# PRINT OUTPUT

santas.each do |each_santa|
  each_santa.print
end













