# Exercise 18: Names, Variables, Code, Functions

# this one is like your scripts with ARGV
def print_two(*args)
  args1, args2 = args
  puts "args1: #{args1}, args2: #{args2}"
end

# ok, that *args is actually pointless, we can just do this
def print_two_again(args1, args2)
  puts "args1 #{args1}, args2: #{args2}"
end

# this just takes one argument
def print_one(args1)
  puts "args1: #{args1}"
end

# this one takes no argument
def print_none()
  puts "I got nothing."
end

print_two("Hai", "Pham")
print_two_again("P", "H")
print_one("Ruby programming!")
print_none()
