#!/usr/bin/ruby

# unless is the opposit to if

a = true
b = false
c = 20

unless b
  puts 'b is false'
end

# else
unless a
  puts 'a is false'
else
  puts 'a is true'
end

# modifier
puts 'boom' unless b

# then
unless c < 19 then puts 'c is greater than or eq to 19!' end

# no else if for unless but can write something like this

unless a then
  puts 'a is false'
else
  unless c == 20 then
    puts 'c is not equal to 20'
  else
    unless b then
      puts 'b is false'
    end
  end
end

