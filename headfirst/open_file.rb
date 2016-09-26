# Example showing how to opening a file

# Opening file to read

lines = []

# Using readlines() method to get an array with every line from
# the file
File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include? "Truncated" }

puts relevant_lines

def print_block_result
  block_result = yield
  puts block_result
end

print_block_result { 1 + 1 }

print_block_result do
  "I'm not the last expression, so I'm not the return value"
  "I'm the result"
end

print_block_result { "I hated Truncated".include? ("Truncated")}
