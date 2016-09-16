# Get My Number
# Written by you!

puts "Welcome to 'Guessing Game'!"
# Get the player's name, and greet them.
puts "What's you name?"
name = gets.chomp
puts "Welcome, #{name}"
# Or we can use 'p' method as well
# Same thing: input = gets.chomp ~ p input

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guessed correctly.
guessed_it = false

until num_guesses == 10 || guessed_it 

  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.chomp.to_i

  num_guesses += 1

  # Compare the guess to the target.
  # Print the appropriate message.
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  else
    puts "Good job, #{name}!"
    puts "You gueesed my number in #{num_guesses} guess!"
    guessed_it = true
  end
end
# If player run out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}!)"
end
