# Exercise 15: Reading Files

filename = ARGV.first   # getting file name from first argument

# Open the file *filename*
txt = open(filename)

puts "Here's your file #{filename}:"

# Read the content of *filename* and print it out
print txt.read
txt.close()

print "Type the filename again:"
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt_again.close()
