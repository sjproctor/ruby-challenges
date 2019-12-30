# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

def mult1 array
  array.map do |value|
    value * 3
  end
end
p mult1 myArray

myArray.each do |value|
  p value * 3
end

myArray.each { |value| p value * 3 }

# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"

def capitalizer words
  caps = words.split.map do |value|
    value.capitalize
  end
  caps.join(" ")
end
p capitalizer sentence

p sentence.split.map(&:capitalize).join(' ')

# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"

def vowelsOut words
  words.downcase.delete('aeiou')
end
p vowelsOut no_vowels

# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Example
# class names should be uppercase
  def initialize(day)
  # constructor is used in JS, def initialize is used in Ruby
    @day=day
  end

  def sayHi
  # method names are lowercase
    if day === "Friday"
    # Ruby does not require () or {} for a basic if/else block
      puts "TGIF!"
    elsif day === "Monday"
    # else if is used in JS, elsif is used in Ruby
      puts "Its monday again"
    else
      puts "another day"
    end
    # if/else blocks need an end
  end
  # methods need an end

end

# 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.

class Animal
  def initialize(color)
    @color = color
    @legs = 4
  end
  def legs
    @legs
  end
end

# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.

p dog = Animal.new("brown")
p dog.legs
