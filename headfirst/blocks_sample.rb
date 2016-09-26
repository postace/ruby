# Testing blocks return values

def triple_block_result
  puts 3 * yield
end

triple_block_result { 2 }
triple_block_result { 5 }


# Return value in interpolate string

def greet
  puts "Hello, #{yield}"
end

greet { "Hai" }

# Using block in a conditional

def alert_if_true
  if yield
    puts "Block returned true"
  else
    puts "Block returned false"
  end
end

alert_if_true { 2 + 2 > 5 }
alert_if_true { 5%2 != 0 }


# Example about block with return keyword

def print_block_value
  puts yield
end

def other_method
  print_block_value { return 1 + 1 } # This line will not print anything
  print_block_value { 1 + 1}      	 # This line will.
end

other_method

