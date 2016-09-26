# Exercise 21: Functions Can Return Something

# Notes :
#   + We can use return key-word to return data
#   + If we omit 'return' the functions still works because Ruby
#     implicitly returns whatever the last expression calculates.
def add(a, b)
  puts "Adding #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "Subtracting #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "Multiplying #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "Dividing #{a} / #{b}"
  a / b     # This function will works
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(190, 18)
weight = multiply(8, 7)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzzle for the extra credit, type it in anyway.
puts "Here's the puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand"
