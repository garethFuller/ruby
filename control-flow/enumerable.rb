#!/usr/bin/ruby

a = [1,2,3,4,5,6,7]

puts '--------- collect / map --------'
b = a.collect do |i|
  i**i
end
puts b.inspect

puts '---------- select evens -------'
evens = a.select do |i|
  i % 2 == 0
end
puts evens.inspect

puts '------------ reject to select odds ---------'
odds = a.reject do |i|
  i % 2 == 0
end
puts odds.inspect

puts '-------------- inject ---------------'
# the first arg is the value of the return of the last iteration, the i value is
# the value of the next element in the collection
sum = a.inject do |last, current|
  last + current # 1+2+3+4+5 etc
end
puts "sum is #{sum}"

# can customize what value to start at using an arg to inject e.g
sumPlusOne = a.inject(1) do |last, current|
  last + current # 1+1+2+3+4+5
end
puts "sum plus one: #{sumPlusOne}"
