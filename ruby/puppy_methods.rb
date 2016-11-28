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
# Driver Code
fido = Puppy.new
toy = "rope bone"
fido.fetch(toy)
fido.sic("Ollie")
p fido.dog_years(11)
fido.roll_over
fido.speak(3)