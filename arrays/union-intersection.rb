#!/usr/bin/ruby

a = [1,2,3,4]
b = [4,5,6]

puts '---- union of a over b ----'
puts a | b # duplicates removed [1,2,3,4,5,6]

puts '---- union b over a -----'
puts b | a #resulting set starts with b: [4,5,6,1,2,3]

puts '----- intersection a over b -----'
puts a & b #[4] as with union the order would be diff if there was more
