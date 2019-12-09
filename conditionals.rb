# Challenge: Rock, Paper, Scissors
# Write the code that allows two users to input their moves in terminal for "Rock, Paper, Scissors" and determines the winner (or if a tie occurred).


puts 'Player1 enter your choice'
player1 = gets.chomp.downcase
puts 'Player2 enter your choice'
player2 = gets.chomp.downcase

if player1 === 'rock' && player2 === 'scissors'
  puts "Player1's #{player1} beats #{player2}"
elsif player1 === 'rock' && player2 === 'paper'
  puts "Player2's #{player2} beats #{player1}"
elsif player1 === 'scissors' && player2 === 'rock'
  puts "Player2's #{player2} beats #{player1}"
elsif player1 === 'scissors' && player2 === 'paper'
  puts "Player1's #{player1} beats #{player2}"
elsif player1 === 'paper' && player2 === 'rock'
  puts "Player1's #{player1} beats #{player2}"
elsif player1 === 'paper' && player2 === 'scissors'
  puts "Player2's #{player2} beats #{player1}"
elsif player1 === player2
  puts "Tie!"
end
