#!/usr/bin/ruby

partOne = 'Gareth '
partTwo = 'rocks'

one =  partOne + partTwo
# after this operation partOne is set to be the value of
# the concatination
two = partOne << partTwo

puts 'Value of parts after modification'
puts "part one: #{partOne}"
puts "part two #{partTwo}"

puts "value of the concatinated vars"
puts "One: #{one}"
puts "Two: #{two}"
