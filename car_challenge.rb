# Challenge: Car Challenge

# Programmer Stories
# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
class Car
  def initialize(model, year)
    @model = model
    @year = year
    @wheels = 4
    @lights = 'off'
    @turn_signal = 'off'
    @speed = 0
  end

  attr_reader :wheels

  def get_model
    # getter method for model
    @model
  end

  def get_year
    # getter method for year
    @year
  end

  def lights
    # when called will toggle the light variable
    @lights == 'off' ? 'on' : 'off'
  end

  def turn_signal
    # when called will toggle the turn_signal variable
    @turn_signal == 'off' ? 'on' : 'off'
  end

  def to_s
    # method that describes all the information about a car
    "The car is a #{@year} #{@model} the lights are #{@lights} with #{@wheels} wheels going #{@speed} mph and the turn signal is #{@turn_signal}."
  end
end

# creating a generic car object
my_car = Car.new('generic car', 'my_car year')

# Story: As a programmer, I can give my car a model on initialization. Hint: The model for the car class can be "generic car"

# Story: As a programmer, I can give my car a year on initialization. Hint: The year for the car class can be "my_car year"

# Story: As a programmer, I can tell how many wheels a car has. The default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
# p my_car.wheels

# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is an instance of class Tesla which inherits from class Car.
class Tesla < Car
  def accelerate
    # accelerate method that is specific to Tesla
    @speed += 10
  end

  def brake
    # brake method that is specific to Tesla
    if @speed <= 7
      @speed = 0
    else
      @speed -= 7
    end
  end
end

# creating a new Tesla object
my_tesla = Tesla.new('s3', 2017)

# Story: As a programmer, I can give my Tesla a model on initialization.

# Story: As a programmer, I can give my Tesla a year on initialization.

# Story: As a programmer, I can make a Toyota car.
class Toyota < Car
  def accelerate
    # accelerate method that is specific to Toyota
    @speed += 7
  end

  def brake
    # brake method that is specific to Toyota
    if @speed <= 5
      @speed = 0
    else
      @speed -= 5
    end
  end
end

# creating a new Toyota object
my_toyota = Toyota.new('4Runner', 2004)

# Story: As a programmer, I can give my Toyota a model on initialization.

# Story: As a programmer, I can give my Toyota a year on initialization.

# Story: As a programmer, I can make a Honda car.

class Honda < Car
  def accelerate
    # accelerate method that is specific to Toyota
    @speed += 5
  end

  def brake
    # brake method that is specific to Honda
    if @speed <= 2
      @speed = 0
    else
      @speed -= 2
    end
  end
end

# creating a new Honda object
my_honda = Honda.new('Civic', 2018)

# Story: As a programmer, I can give my Honda a model on initialization.

# Story: As a programmer, I can give my Honda a year on initialization.

# Story: As a programmer, I can turn on and off the lights in my cars. Lights start in the off position.
my_tesla.lights
# => "on"
my_toyota.lights
# => "off"
my_honda.lights
# => "on"

# Story: As a programmer, I can signal left and right. Turn signals starts off.
my_tesla.turn_signal
# => "on"
my_toyota.turn_signal
# => "off"
my_honda.turn_signal
# => "on"

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 mph.

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
my_tesla.accelerate
# => 10
my_tesla.accelerate
# => 20
my_tesla.accelerate
# => 30

# Story: As a programmer, I can slow my Teslas down by 7 per braking.
my_tesla.brake
# => 23
my_tesla.brake
# => 16

# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
my_toyota.accelerate
# => 7
my_toyota.accelerate
# => 14

# Story: As a programmer, I can slow my Toyotas down by 5 per braking.
my_toyota.brake
# => 9
my_toyota.brake
# => 4
p 'here'
p my_toyota.brake

# Story: As a programmer, I can speed my Hondas up by 5 per acceleration.
my_honda.accelerate
# => 5
my_honda.accelerate
# => 10

# Story: As a programmer, I can slow my Hondas down by 2 per braking.
my_honda.brake
# => 8
my_honda.brake
# => 6

# Story: As a programmer, I can call upon a car to tell me all its information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

p my_tesla.to_s
# => "The car is a 2017 s3 the lights are off with 4 wheels going 16 mph and the turn signal is off."
p my_toyota.to_s
# => "The car is a 2004 4Runner the lights are off with 4 wheels going 4 mph and the turn signal is off."
p my_honda.to_s
# => "The car is a 2018 Civic the lights are off with 4 wheels going 6 mph and the turn signal is off."

# Stretch Challenges
# Story: As a programmer, I can keep a collection of two of each kind of car model, all from different years. Hint: Create two of each vehicles, all from different model years, and put them into an array.

my_other_tesla = Tesla.new('S3', 2020)
my_other_toyota = Toyota.new('4Runner', 2009)
my_other_honda = Honda.new('Civic', 2007)

class Garage
  def initialize
    @car_collection = []
    @car_models = []
    @car_years = []
  end

  def garage
    @car_collection
  end

  def models
    @car_models
  end

  def years
    @car_years
  end
end

my_garage = Garage.new

my_garage.garage << my_tesla.to_s
my_garage.models << my_tesla.get_model
my_garage.years << my_tesla.get_year
my_garage.garage << my_other_tesla.to_s
my_garage.models << my_other_tesla.get_model
my_garage.years << my_other_tesla.get_year

my_garage.garage << my_toyota.to_s
my_garage.models << my_toyota.get_model
my_garage.years << my_toyota.get_year
my_garage.garage << my_other_toyota.to_s
my_garage.models << my_other_toyota.get_model
my_garage.years << my_other_toyota.get_year

my_garage.garage << my_honda.to_s
my_garage.models << my_honda.get_model
my_garage.years << my_honda.get_year
my_garage.garage << my_other_honda.to_s
my_garage.models << my_other_honda.get_model
my_garage.years << my_other_honda.get_year

# Story: As a programmer, I can sort my collection of cars based on model.
p my_garage.garage
p my_garage.models
p my_garage.years

p my_garage.models.sort! { |a, b| a <=> b }

# Story: As a programmer, I can sort my collection of cars based on year. Hint: Find out how the spaceship operator can help you with an array.

p my_garage.years.sort! { |a, b| a <=> b }
