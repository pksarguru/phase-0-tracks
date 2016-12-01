# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

# end

class Bears
  
  def initialize(name)
    puts "You are going to be attacked by a bear."
    @name = name
  end
  def maul(animal)
    puts "mauls #{animal} to death! It was quick."
  end
  def hibernate
    puts "*goes to sleep for the winter*"
  end

end
bears_array=[]

50.times do |counter|
  bears_array << Bears.new("kujo#{counter +1}")
  counter += 1
end

bears_array.each do |a|
  a.hibernate
  a.maul("ostrich")
end
