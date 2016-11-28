class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    human_age * 7
  end

  def sic(name)
    puts "#{name} is being horribly attacked by puppy licks!"
  end
end

class Human

  def initialize
    puts "and there was much crying..."
  end

  def curse(xxx)
    puts "#{xxx}!! oh my stars and garters!"
  end

  def flogging_molly(num)
    print "I like to"
    num.times {print " drink!"}
    puts "\nAnd fight!"
  end

end


# Driver Code
fido = Puppy.new
toy = "rope bone"
fido.fetch(toy)
fido.sic("Ollie")
p fido.dog_years(11)
fido.roll_over
fido.speak(3)

people = []
50.times do
  people << Human.new
end

people.each do |person|
  person.curse("Sweet Christmas!")
  person.flogging_molly(3)
end

