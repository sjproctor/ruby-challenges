# Challenge: Rock, Paper, Scissors

# Story: As user 1, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
# Story: As user 2, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
# Story: As a user, I can see a message in the terminal saying if user 1 or user 2 won the round.
# Story: As a user, I can see a message in the terminal saying if there was a tie.

puts 'The game is Rock, Paper, Scissors'
puts 'Player 1 enter your name'
name1 = gets.chomp.capitalize
puts "#{name1} enter your choice"
player1 = gets.chomp.downcase
puts 'Player 2 enter your name'
name2 = gets.chomp.capitalize
puts "#{name2} enter your choice"
player2 = gets.chomp.downcase

if player1 === 'rock' && player2 === 'scissors'
  puts "#{name1}'s #{player1} beats #{player2}"
elsif player1 === 'rock' && player2 === 'paper'
  puts "#{name2}'s #{player2} beats #{player1}"
elsif player1 === 'scissors' && player2 === 'rock'
  puts "#{name2}'s #{player2} beats #{player1}"
elsif player1 === 'scissors' && player2 === 'paper'
  puts "#{name1}'s #{player1} beats #{player2}"
elsif player1 === 'paper' && player2 === 'rock'
  puts "#{name1}'s #{player1} beats #{player2}"
elsif player1 === 'paper' && player2 === 'scissors'
  puts "#{name2}'s #{player2} beats #{player1}"
elsif player1 === player2
  puts "Tie!"
end
