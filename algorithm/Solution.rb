@n = gets.to_i
k = gets.split(" ")
a = k.map {|x| x.to_i}
a.sort.reverse.each {|i| print i}
