# Introduce to mapping in Ruby

# Find adjectives within each review
def find_adjective(string)
  # Break the string into an array of words
  words = string.split(" ")
  # Find the index of the word is
  index = words.find_index("is")
  # Return the word following is
  words[index+1]
end

lines = []

# Opening file, auto close when done
File.open("reviews.txt") do |review_file|
  # Read every line in the file into an array
  lines = review_file.readlines
end

# Find lines that include the movie name
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
# Exlucde reivewer bylines
reviews = relevant_lines.reject { |line| line.include?("--") }

adjectives = reviews.map do |review|
  # find the adjective
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critices agree, Truncated is:"
puts adjectives
