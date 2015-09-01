#!/usr/bin/ruby

r = 1..10

puts 'does it include 5?'
puts r.include? 5 # this is slow in 1.9

puts 'is 10 a member?'
puts r.member? 10

puts 'include on 10?'
puts r.include? 10

# 1.9 has new cover method, which is like include but fast
puts 'cover on 5?'
puts r.cover? 10