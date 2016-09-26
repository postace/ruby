# Problems: https://coderbyte.com/editor/Longest%20Word:Ruby

def LongestWord(sen)

  # we use the regex match function which searches the string for the
  # pattern and returns an array of strings it finds
  # in our case the pattern we define below returns words with
  # only the characters a through z and 0 through 9, stripping away punctuation
  # e.g. "hello$% ##all" becomes [hello, all]
  arr = sen.split.map do |w|
    /[a-zA-Z0-9\s]+/.match(w)
  end

  # no need to sort and get the last word, you can
  # easily find largest word in array using max_by
  longest = arr.max_by do |w|
      w.to_s.length
  end

  return longest
end

# keep this function call here
puts LongestWord(STDIN.gets)
