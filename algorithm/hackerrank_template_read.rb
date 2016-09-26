#!/bin/ruby

# Input like :
# 9
# 10 20 20 10 10 30 50 10 20

# We will do:

n = gets.strip.to_i
c = gets.strip
# Converting array string to int array
c = c.split(' ').map(&:to_i)
