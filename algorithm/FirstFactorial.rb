# Problems: https://coderbyte.com/editor/First%20Factorial:Ruby

def FirstFactorial(num)
  num = num.to_i
  return 1 if (num <= 0)

  return num*FirstFactorial(num-1)

end

# keep this function call here
puts FirstFactorial(STDIN.gets)
