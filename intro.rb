# Challenges: Intro to Ruby

# Arithmetic Challenges
# Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.

# Add, subtract, multiply and divide some numbers and floats.
puts 5 + 6
puts 5 - 4
puts 6 * 4
puts 9 / 3
puts 5 / 2
puts 5 / 2.5
puts 4 ** 3

# Find the remainder of dividing two numbers using the modulo operator (%).
puts 9 % 3
puts 9 % 2

# Divide a number by 0.
# puts 4 / 0

# Divide 0 by 0.
# puts 0 / 0

### Variables Challenges

# Set a variable called my_favorite_number equal to your favorite number.
my_favorite_number = 7

# Calculate your favorite number divided by 2.
puts my_favorite_number / 2

# Set another variable called someones_favorite equal to 13.
someones_favorite = 13
puts someones_favorite

# Change the value of someones_favorite to 7.
someones_favorite = 7
puts someones_favorite

# Subtract my_favorite_number from someones_favorite.
puts someones_favorite - my_favorite_number

# Change the value of my favorite number to be 26 times its current value.
puts my_favorite_number = my_favorite_number * 26

# Strings Challenges
# Create a variable and return it in a sentence string interpolation.
my_name = 'Sarah'
puts "Hello, my name is #{my_name}!"

# Create a variable that contains a string and test some of the Ruby string methods.

# .upcase
puts my_name.upcase
# .reverse
puts my_name.reverse
# .include?
puts my_name.include?'e'
puts my_name.downcase.include?'s'
# .capitalize
puts my_name.capitalize

# Arrays Challenges
# Create an array with five or six of your favorite TV shows
my_tv_shows = ["Friends", "Parks and Rec", "Scrubs", "The Office", "Brooklyn 99", "The Simpsons"]

# Find the length of the array.
puts my_tv_shows.length

# From the full TV show array, extract your top 3 TV shows in a new array.
my_favorite_tv_shows = []
my_favorite_tv_shows << my_tv_shows[1]
my_favorite_tv_shows << my_tv_shows[4]
my_favorite_tv_shows << my_tv_shows[5]
puts my_favorite_tv_shows

# Reverse the array.
puts my_favorite_tv_shows.reverse

# Get one element from the array.
puts my_favorite_tv_shows[0]
