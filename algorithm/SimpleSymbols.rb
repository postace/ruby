# Problem: https://coderbyte.com/editor/Simple%20Symbols:Ruby

def SimpleSymbols(str)

  # pad the strings so that if a character exists at the beginning
  # of the string for example, we don't get on out-of-bounds error by
  # trying to get the character before it
  str = '=' + str + '='

  # loop through the entire string
  (0..str.length-1).each do |i|
    # check to see if current character is an alphabetic character
    if str[i] =~ /[A-Za-z]/
      # check to see if a + symbol is to the left and right
      # if not, then we know this string is not valid
      if str[i-1] != '+' || str[i+1] != '+'
        return 'false'
      end
    end
  end
  return 'true'
end

# keep this function call here
puts SimpleSymbols(STDIN.gets)
