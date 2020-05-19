# Challenges

# Write a loop that prints the numbers 1 to 20.
(1..20).each do |num|
  p "Here is one way: #{num}"
end

# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.
num = 1
while num <= 20
  p "Here is another way: #{num}"
  num += 1
end

# Write a loop that prints only even numbers from 20 to 0.
dec = 20
while dec >= 1
  p "Here is decrementing: #{dec}"
  dec -= 1
end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

my_nums = [3, 4, 667, 2, 46, 79, 0, -9, 45, 6]

def mult5 array
  array.map do |value|
    value*5
  end
end
p mult5 my_nums

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

words_array = ['cactus', 'succulent', 'fern', 'maple']

def capitalizer array
  array.map! do |value|
    value.upcase
  end
end
p 'method outcome'
p capitalizer words_array
p 'og array'
p words_array

# Create a method that takes in an array of numbers and returns the largest number in the array.

def largest array
  anchor = array.first
  array.each do |value|
    if value > anchor
      anchor = value
    end
  end
  anchor
end
p "largest should be 667"
p largest my_nums

# Create a method that takes in an array of numbers and returns the smallest number in the array.
def smallest array
  anchor = array.first
  array.each do |value|
    if value < anchor
      anchor = value
    end
  end
  anchor
end
p "smallest should be -9"
p smallest my_nums

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

def odds_sorted array
  just_odds = array.select do |value|
    value.odd?
  end
  just_odds.sort
end
p "odds sorted"
p odds_sorted my_nums

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

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
crazy_word1 = "Hello"
crazy_word2 = "aLbAtRoSs"

def case_swap string
  split_string = string.split""
  swap = split_string.map do |value|
    if value.upcase == value
      value.downcase
    elsif value.downcase == value
      value.upcase
    else
      "error"
    end
  end
  swap.join""
end
p case_swap crazy_word1
p case_swap crazy_word2

# Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

words = ['Apple', 'Avocado', 'Banana', 'Mango']

def starts_with array, letter
  array.select do |value|
    value[0].downcase == letter.downcase
  end
end
p starts_with words, 'a'
p starts_with words, 'm'

# Stretch Challenges: FIZZBUZZ
# Write a program that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.

def fizz_buzz
  (1..100).each do |num|
    if num%15 == 0
      p 'fizzbuzz'
    elsif num%3 == 0
      p 'fizz'
    elsif num%5 == 0
      p 'buzz'
    else
      p num
    end
  end
end
fizz_buzz
