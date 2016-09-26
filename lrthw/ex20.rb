# Exercise 20: Functions and Files

input_file = ARGV.first   # assign file name

def print_all(f)
  # read file content and then print it
  puts f.read
end

def rewind(f)
  f.seek(0)
end

def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First, let's print the whole file:\n"

print_all(current_file)

puts  "Now let's rewind, kind of like a tape."

# We need to rewind because if we call print_call() twice
# it will not work as expected

rewind(current_file)

puts "Let's print three lines: "

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
