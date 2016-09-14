print "How old are you?"
# getting input from user
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

# Convert string to math
puts "Hey, lets doing some math"
print "Enter a number "
first = gets.chomp
first = first.to_i
print "Enter another number "
second = gets.chomp
second = second.to_i
puts "#{first} + #{second} = #{first + second}"
