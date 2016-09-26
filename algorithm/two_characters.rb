################################################################################
#Input from file
# Access files
lines = []
# Opening file to read
File.open("test.txt") do |infile|
  lines = infile.readlines
end
len = lines[0]
s = lines[1].chomp
################################################################################
@max_l = 0

################################################################################
arr = (s.split("").uniq).clone

0.upto(arr.length-2) do |i|
  first = arr[i]
  index = s.index(first)

  (i+1).upto(arr.length-1) do |j|

    second = arr[j]
    current = first
    c_len = 1

    (index+1).upto(s.length-1) do |k|
      if s[k] == current
        c_len = 0
        break
      elsif s[k] == second
        c_len += 1
        current = second
      elsif s[k] == first
        c_len += 1
        current = first
      end
    end
    @max_l = @max_l < c_len ? c_len : @max_l
  end
end

puts @max_l
