# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative references in a file within the same local directory
# require is capable of referencing more stuff
require_relative 'state_data.rb'

require 'pry'

class VirusPredictor

#initializes values for the state, population, and population density of any new instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Combines the results of both methods to estimate how many people will die, and how quickly
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Based upon population desity and population it will apply a multiplication factor and output a different prediction of deaths for a given state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      n = 0.4
    elsif @population_density >= 150
      n = 0.3
    elsif @population_density >= 100
      n = 0.2
    elsif @population_density >= 50
      n = 0.1
    else
      n = 0.05
    end

    number_of_deaths = (@population * n).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Estimates how quickly the disease will spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each_pair do |key, value|
  # binding.pry
  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end

#=======================================================================

# Reflection

1. The parent hash syntax uses strings as keys and the nested hashes use symbols as keys

2. 







