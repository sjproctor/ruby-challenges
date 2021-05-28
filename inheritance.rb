# Challenges: Animal Kingdom

# Story: As a developer, I can make an Animal.
# Story: As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# Story: As a developer, I can give my Animal an age of 0 upon creation.
# Story: As a developer, I can age my Animal up 1 year at a time.
# Story: As a developer, I can return my Animal's age, as well as if they're alive. Hint: Use attr_accessor as well as an initialize method.

class Animal
  attr_accessor :alive, :age
  def initialize
    @alive = true
    @age = 0
  end
  def add_year
    @age = @age + 1
  end
  def circle_of_life
    @alive = false
  end
end

animal = Animal.new
animal.add_year
puts 'Animal age:'
p animal.age

module Swim
  def can_swim
    'I can swim!'
  end
end

# Story: As a developer, I can create a Fish that inherits from Animal.

# Story: As a developer, I can initialize all of my fish to be cold_blooded (yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that).

class Fish < Animal
  include Swim
  attr_accessor :temp
  def initialize
    super()
    @temp = 'cold blooded'
  end
end

fish = Fish.new
puts 'Fish temp:'
p fish.temp
puts 'Fish can swim:'
p fish.can_swim

# Story: As a developer, I can create a Salmon that inherits from Fish.

# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc.).

# Story: As a developer, I can see that my Salmon is cold-blooded.

# Story: As a developer, I can age my Salmon up.

# Story: As a developer, I can see a message that tells me all of my Salmon's information.

# Story: As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Salmon < Fish
  include Swim
  attr_accessor :species, :age
  def initialize species
    super()   # must be exactly this syntax
    @species = species
    @age = 0
  end
  def add_year
    if @age < 4
      @age = @age + 1
    else
      circle_of_life     # calling the method from parent class
    end
  end
  def get_info
    "The #{@species} salmon is a #{@temp} fish and #{@age} years old. #{can_swim}"
  end
end

sockeye = Salmon.new 'sockeye'
p sockeye.alive
sockeye.add_year
sockeye.add_year
sockeye.add_year
sockeye.add_year
sockeye.add_year
p sockeye.age
p sockeye.temp
p sockeye.alive
p sockeye.species
p sockeye.get_info


# Story: As a developer, I can create a Mammal that inherits from Animal.

# Story: As a developer, I can initialize all of my Mammals to be warm_blooded.

class Mammal < Animal
  attr_accessor :temp
  def initialize
    super()
    @temp = 'warm blooded'
  end
end

mammal = Mammal.new
p mammal

# Story: As a developer, I can create a Bear that inherits from Mammal.

# Story: As a developer, I can age my Bear up.

# Story: As a developer, I can see a message that tells me all of my Bear's information.

# Story: As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Bear < Mammal
  include Swim
  attr_accessor :age
  def add_year
    @age = @age + 1
  end
  def get_info
    "The #{@temp} bear is #{@age} years old and #{@alive ? 'alive' : 'dead'}. #{can_swim}"
  end
  def add_year year
    if @age < 20
      @age = @age + year
    else
      circle_of_life     # calling the method from parent class
    end
  end
end

bear = Bear.new
bear.add_year 20
bear.add_year 1
p bear.get_info

# Story: As a developer, I can create a Mammal of my choice.

# Story: As a developer, I can interact with the new Mammal via various methods.

# Story: As a developer, I can see a message that tells me all of my new Mammal's information.

class Okapi < Mammal
  def initialize gender
    super()
    @home = 'Democratic Republic of the Congo'
    @gender = gender
  end
  def get_info
    "The okapi is a #{@temp} #{@gender} and is from #{@home}. "
  end
end

okapi = Okapi.new 'female'
p okapi.get_info


# Stretch Challenges
# Story: As a developer, I can keep a collection of two of each Animal. Hint: You'll want to add your Animals into an array.

class Zoo
  attr_accessor :animals
  def initialize
    @animals = []
  end
end

san_diego_zoo = Zoo.new
san_diego_zoo.animals << sockeye
san_diego_zoo.animals << bear
san_diego_zoo.animals << okapi
p san_diego_zoo.animals

# Story: As a developer, I can sort my collection of Animals based on age. Hint: Find out how the spaceship operator can help you with an array.
p san_diego_zoo.animals.map{|value| value.age}.sort {|a, b| a <=> b}


# Super Stretch Challenge
# Story: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.
