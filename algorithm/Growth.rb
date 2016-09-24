# Problems: https://www.codewars.com/kata/growth-of-a-population/train/ruby

def nb_year(p0, c, aug, p)
    i = 1
    while true do
      p0 = p0 + p0 * (c/100.0) +aug
      return i if p0 >= p      
      i += 1
    end
    i
end

p0 = 1500
c = 5
aug = 100
p = 5000

puts nb_year(p0, c, aug, p)
