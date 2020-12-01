# Challenges: Methods

# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers num1, num2
  num1 + num2
end
p sum_these_numbers 5, 6
p sum_these_numbers 8, 5
p sum_these_numbers -8, 100

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even num
  if num%2 == 0
    "#{num} is even"
  else
    "#{num} is odd"
  end
end
p is_even 34
p is_even 33
p is_even -5

def is_even2 num
  if num.even?
    "#{num} is even"
  else
    "#{num} is odd"
  end
end
p is_even2 34
p is_even2 33
p is_even2 -5

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
def inclusive num
  if num >= 1 && num <= 10
    "#{num} is between 1 & 10"
  else
    "#{num} in invalid"
  end
end
p inclusive 3
p inclusive 19
p inclusive -8

# Create a method that takes in a string and determines if the string is a palindrome.
pal_one = 'racecar'
pal_two = 'tidbit'

def palindrome_checker string
  if string.reverse == string
    "#{string.capitalize} is a palindrome."
  else
    "#{string.capitalize} is not a palindrome."
  end
end
p "palindrome"
p palindrome_checker pal_one
p palindrome_checker pal_two

# Password Checker: User Stories
# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

puts "Enter your user name:"
user_name = gets.chomp
puts "Enter your password:"
password = gets.chomp

# User ID and password cannot be the same.
def are_same user, pass
  if user == pass
    'Sorry, username and password cannot be the same.'
  else
    'Yay, your username and password are not the same.'
  end
end
p are_same user_name, password

# User ID and password have to be at least six characters long.
def user_long_enough user
  if user.length <= 6 && user.length <= 6
    'Sorry, username and password must be at least 6 characters.'
  else
    'Yay, username and password are at least 6 characters.'
  end
end
p user_long_enough user_name

# Password has to contain at least one of: !#$
def password_special_character pass
  characters = ['!', '#', '$']
  if characters.select { |value| pass.include? value }.length == 0
    'Sorry, password must have a special character.'
  else
    'Yay, password includes a special character.'
  end
end
p password_special_character password

# User ID cannot contain the following characters: !#$ or spaces
def user_special_character user
  characters = ['!', '#', "$", " "]
  if characters.select {|value| user.include? value}.length > 0
    'Sorry, user name cannot have a special characters.'
  else
    'Yay, user name does not includes special characters.'
  end
end
p user_special_character user_name

# Password cannot be the word "password".
def is_password_password pass
  if pass.downcase == 'password'
    'Sorry, password cannot be password.'
  else
    'Yay, password is not password.'
  end
end
p is_password_password password

# Stretch
# As a user, I can enter my user ID and password and find out if the they are acceptable.

def validate_password
  puts "Enter your user name:"
  user_name = gets.chomp.downcase
  puts "Enter your password:"
  password = gets.chomp.downcase
  password_characters = ['!', '#', "$"]
  user_characters = ['!', '#', "$", " "]
  if user_name == password
    'Sorry, username and password cannot be the same.'
  elsif user_name.length <= 6 && password.length <= 6
    'Sorry, username and password must be at least 6 characters.'
  elsif password_characters.select { |value| password.include? value }.length == 0
    'Sorry, password must have a special character.'
  elsif user_characters.select {|value| user_name.include? value}.length > 0
    'Sorry, user name cannot have a special characters.'
  elsif password.downcase == 'password'
    'Sorry, password cannot be password.'
  else
    'Yay, looks good!'
  end
end
p validate_password

# As a user, my password has to contain at least one digit.
def contains_a_digit pass
  nums = [*1..9]
  if nums.select { |value| pass.include? value.to_s }.length == 0
    'Sorry, password must contain a number.'
  else
    'Yay, password contains a number.'
  end
end
p contains_a_digit password
