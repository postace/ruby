# Exercise Study Drills for Ex33

def increase_number(n, array, step)
  i = 0
  while i < n
    puts "At the top i is #{i}"
    array.push(i)

    i += step
    puts "Array now are: #{array}"
    puts "At the bottom i is #{i}"
  end
end

def increase_by_range(array)
  (0..6).each {|i| array.push(i)}
end


numbers = []
increase_by_range(numbers)

# loop through each element of array
numbers.each {|number| puts number }
