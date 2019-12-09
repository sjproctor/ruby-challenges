# Challenges
# Write a loop that prints from 1 to 20.

(1..20).each do |i|
  puts "#{i}"
end

# --or--

count = 1
until count > 20
  puts count
  count += 1
end

# Write a loop that prints 20 to 1.

count = 20
until count < 1
  puts count
  count -= 1
end

# Create an array of 10 numbers. Write loop that multiplies the numbers by 5.

my_nums = [3, 4, 667, 2, 46, 79, 0, -9, 45, 6]

# as a block
my_nums.map { |value|
  puts value*5
}
# as a do/end
my_nums.map do |value|
  puts value*5
end

# --or--

# as a block
my_nums.each { |value|
  puts value*5
}
# as a do/end
my_nums.each do |value|
  puts value*5
end

# Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.

# as a block
words_array = ['cactus', 'succulent', 'fern', 'maple']
words_array.each { |value|
  puts value.upcase
}
# --or--
# do/end
words_array.each do |value|
  puts value.upcase
end

# Stretch Challenges: FIZZBUZZ
# Write a program that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.

(1..100).each do |num|
  if num%15 == 0
    puts 'fizzbuzz'
  elsif num%3 == 0
    puts 'fizz'
  elsif num%5 == 0
    puts 'buzz'
  else
    puts num
  end
end
