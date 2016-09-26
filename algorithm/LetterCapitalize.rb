# Problem : https://coderbyte.com/editor/Letter%20Capitalize:Ruby

def LetterCapitalize(str)
  # convert to array of string
  arr = str.split(' ')
  # capitalize itself
  arr.each do |val|
    val.capitalize!
  end
  # final, concat it to string
  return arr.join(' ')
end

# keep this function call here
puts LetterCapitalize(STDIN.gets)
