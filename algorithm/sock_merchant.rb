# Problems: https://www.hackerrank.com/contests/world-codesprint-7/challenges/sock-merchant

# Input
# 9
# 10 20 20 10 10 30 50 10 20
# Status: Completed Challgene

lines = []
# Opening file to read
File.open("test.txt") do |infile|
  lines = infile.readlines
end

# Parsing from files
n = lines[0].to_i
a = lines[1].split

numbers = Hash.new(0)

a.each do |ch|
  numbers[ch] += 1
end

@matching_pairs = 0

numbers.each do |key,value|
  @matching_pairs += value / 2
end

puts @matching_pairs
