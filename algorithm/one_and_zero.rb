# Problems: https://www.codewars.com/kata/ones-and-zeros/train/ruby

# Join each element in array
# Then convert to binary
def binary_array_to_number(arr)
  arr.join("").to_i(2)
end
