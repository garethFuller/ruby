#!/usr/bin/ruby

b = 30

puts 'how old are you holmes?'

age = case
      when b <= 20 then 'kid'
      when b <= 25 then 'adult'
      when b < 30 then 'almost cool'
      when b == 30 then 'a cool age like gareth'
      else 'whaaaa are you some kind of cave man!'
      end

puts age

# can also be marked up like so for code blocks

case
when b <= 20
  puts 'one'
when b <= 25
  puts 'two'
else
  puts 'default called'
end

# comma seperation of conditions
case
when b == 1, b == 2 then
  puts 'one'
when b < 20, b == 30 then
  puts 'multi condition mett'
end

# using value, this tests for === not == so you can check multiple types
# like in Range etc
case b
when 20
  puts 'one'
when 30
  puts 'two'
when 40
  puts 'three'
else
  puts 'four'
end

# can also use equal when with multiple conditions
case b
when 10,20
  puts 'one'
when 30,40
  puts 'two'
end


