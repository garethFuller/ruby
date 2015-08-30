#!/usr/bin/ruby

a = "this is a cool \n multi line string"


puts '========== for each char ==========='
puts ''
a.each_char do |c|
  print c
end

puts ''
puts '============= each line ============'
puts ''
a.each_line do |l|
  puts l + ' -----  line'
end