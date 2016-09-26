# For learning Ruby blocks

# This method takes a block as an parameter
def print_something(&my_block)
  puts "We're in the method, about to invoke your block!"
  # Calling the block
  my_block.call
  puts "We're back in the method!"
  my_block.call
end

# A block must always follow a method call
# do -> start of the block
print_something do
  puts "We're in the block!"
end

puts "|____________________________________________________|"
puts "|                                                    |"
puts "|____________________________________________________|"

# Block with paramters
#def give(&my_block)
#  my_block.call("2 turtle doves", "1 partridge")
#end

# Using 'yield' keyword, equivalent to the above method
def give
  yield "2 turtle doves", "1 partridge"
end

give do |p1, p2|
  puts "My method gave to me..."
  puts p1, p2
end

puts "|____________________________________________________|"
puts "|                                                    |"
puts "|____________________________________________________|"

def run_block
  yield
end

run_block do
  puts "do/end"
end

# Curly-brace format
run_block {
  puts "do/end"
  puts "Hello World"
}

puts "|____________________________________________________|"
puts "|                                                    |"
puts "|____________________________________________________|"

def take_this
  yield "present"
end

take_this do |thing|
  puts "do/end block got #{thing}"
end

take_this { |thing| puts "bracket blocks got #{thing}"}
