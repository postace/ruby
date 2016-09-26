# Problem : https://www.codewars.com/kata/sum-of-digits-slash-digital-root/train/ruby

def digital_root(number)
  return number if number < 10

  t = 0
  until number <= 0
    t += number % 10
    number /= 10
  end

  return digital_root(t)
end

# Best practice from community
# =BEGIN SOLUTIONS
def digital_root_best(n)
  n < 10 ? n : digital_root_best(n/10 + n%10)
end
# =END SOLUTIONS

puts "Enter your number: "
n = gets.chomp.to_i
puts digital_root(n)
