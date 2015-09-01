#!/usr/bin/ruby

puts 'range 1..10'
r = 1..10 #range from 1 to ten including 10
r.each do |i|
  puts i
end

puts 'range 1...10'
r = 1...10 #range from 1 to 10 not including 10
r.each do |i|
  puts i
end
