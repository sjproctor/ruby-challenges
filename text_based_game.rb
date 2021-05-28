# Text Based Story Game

# ---------- Prologue)
puts "Welcome Detective. It's been awhile since we've seen you. What's your name again?"
detective = gets.chomp.capitalize
puts "Hello Detective #{detective}. Welcome back to the biz."

puts 'Whose name is on the door under yours?'
partner = gets.chomp.capitalize
puts "Oh, #{partner}. Of course, how silly of me to forget."
puts
puts 'Press "enter" to begin your story.'
puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
gets

# ---------- Game Over)
def game_over(detective)
  puts 'GAME OVER'
  puts "Try again, #{detective}? (Y/N)"
  restart = gets.chomp.downcase

  unless restart == 'y' || restart == 'yes'
    puts "Goodbye, #{detective}."
    exit
  else
    load 'text_based_game.rb'
  end
end

# ---------- Chapter 3)

def chapter3
  puts 'You ask who she suspects.'
  puts  "'It was the gardener, or it could have been my stepmother, or my evil twin,' she cries."
  puts 'Who do you wish to investigate first?'
  puts  'Type 1 for Gardener, 2 for Stepmother, or 3 for Evil Twin: '

  while chose = gets.chomp.to_i
    if chose == 1
      chapter5
    elsif chose == 2
      mom_path()
    elsif chose == 3
      puts 'Evil twin? What is this, a telanovela?'
      game_over(detective)
    else
      puts 'Put that darn glass down and decide who to investigate!'
    end
  end
end

# ---------- Chapter 2)

def chapter2
  puts "You say, 'Tell me more.'"
  puts
  puts "'My husband was a millionaire, but now he is dead. I wasn't home. I didn't do it!''"
  puts
  puts 'Do you believe her?'
  puts
  puts "Type 'yes' if you do, 'no' if you don't"

  while chose = gets.chomp.downcase
    if chose == "yes" || chose == 'y'
      chapter3
    elsif chose == "no" || chose == 'n'
      puts 'Well, she was a real shady dame.'
      game_over(detective)
    else
      puts 'Put that darn glass down and decide if she is lying or truthing!'
    end
  end
end

# ---------- Chapter 1)

def chapter1(detective, partner)
  puts "It is a dark and stormy night. You, Detective #{detective}, lean back in your chair and hoist your feet slowly onto the cluttered desk. The rain lulls and quiets the city just outside your office window but the sound of drops against glass pane didn’t soothe you. You closed a big case today and #{partner} went home hours ago after a few too many celebratory drinks. But you, #{detective}, can’t shake the feeling that something isn’t right. After so many years in the business you know to trust your instincts. Something big is coming. You just have to wait. You lean across the desk towards an abandoned tumbler of single malt when a soft knock makes you jump."
  puts
  puts 'Press "enter" to continue.'
  puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
  gets
  puts "'#{partner}, is that you?' you ask. The door cracks to reveal a pair of wide eyes beneath the hood of a dark raincoat."
  puts
  puts "'Is this the #{detective} & #{partner} Detective Agency?' the sultry voice inquires."
  puts
  puts "'It is,' you reply."
  puts
  puts 'The dark figure opens the door a little wider to reveal a petite shape in a long silky dress inappropriate for even mild weather let alone the late night storm.'
  puts
  puts "'Thank goodness because I am desperately in need of your help. My husband is dead. And the police are after me!
  Will you help me, Detective, #{detective}?'"
  puts
  puts "Type 'yes' to hear more."

  continue = gets.chomp.downcase
  if continue == "yes" || continue == "y"
    chapter2
  else
    puts 'Well, it seems you have had too much scotch to help anyone tonight. Goodbye!'
    game_over(detective)
  end
end

chapter1(detective, partner)
