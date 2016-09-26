# For testing anything in ruby

a = [3, 1, 4, 6, 7, 10]
b = a.dup
def remove_element(array)
  puts array.shift
end

print a, "\n"
print remove_element(b),"\n"
print a, "\n"
