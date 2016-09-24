# Problems: https://www.codewars.com/kata/sum-of-pairs/train/ruby

# Status : Not solved!

def sum_pairs(ints, s)
  for i in 0..ints.size-1
    for j in i+1..ints.size-1
      if ints[i]+ints[j] == s
        a = []
        a.push(ints[i])
        a.push(ints[j])
        return a
      end
    end
  end
  nil # If we reach here, it means we can't find the pairs
end

puts sum_pairs([10, 5, 2, 3, 7, 5] , 10)
