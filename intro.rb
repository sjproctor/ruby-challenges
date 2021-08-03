# Challenges: Ruby Intro

# Arithmetic Challenges
# Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.

# Add, subtract, multiply and divide some numbers and floats.
p 5 + 6
p 5 - 4
p 6 * 4
p 9 / 3
p 5 / 2
p 5 / 2.5
p 4**3

# Find the remainder of dividing two numbers using the modulo operator (%).
p 9 % 3
p 9 % 2

# Divide a number by 0.
# p 4 / 0

# Divide 0 by 0.
# p 0 / 0

### Variables Challenges

# Set a variable called my_favorite_number equal to your favorite number.
my_favorite_number = 7

# Calculate your favorite number divided by 2.
p my_favorite_number / 2

# Set another variable called someones_favorite equal to 13.
someones_favorite = 13
p someones_favorite

# Change the value of someones_favorite to 7.
someones_favorite = 7
p someones_favorite

# Subtract my_favorite_number from someones_favorite.
p someones_favorite - my_favorite_number

# Change the value of my favorite number to be 26 times its current value.
p my_favorite_number *= 26

# Strings Challenges

# Create a variable and return it in a sentence string interpolation.
my_name = 'Sarah'
p "Hello, my name is #{my_name}!"

# Create a variable that contains a string and test some of the Ruby string methods.

# .upcase
p my_name.upcase
# .reverse
p my_name.reverse
# .include?
p my_name.include? 'e'
p my_name.downcase.include? 's'
# .capitalize
p my_name.capitalize

# Arrays Challenges
# Create an array that contains the name of at least five TV shows
my_tv_shows = ['Friends', 'Parks and Rec', 'Scrubs', 'The Office', 'Brooklyn 99', 'The Simpsons']

# Find the length of the array
p my_tv_shows.length

# Return the first item in the array
p my_tv_shows.first

# Return the fourth item in the array
p my_tv_shows[3]

# Permanently reverse the order of the array
p my_tv_shows.reverse!

# Create a new empty array for your top favorite TV shows
my_favorite_tv_shows = []

# From the full TV show array, add your top two favorite shows to the empty array
my_favorite_tv_shows << my_tv_shows[1]
my_favorite_tv_shows << my_tv_shows[2]
p my_favorite_tv_shows
