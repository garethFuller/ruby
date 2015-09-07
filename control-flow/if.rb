#!/usr/bin/ruby

a = true
b = false
c = 10

# standard if
if c < 10
  #something
end

# one line using then
if a then c = 11 end

# multi line using then, more robust as does not depend on
# white space
if b then
  #something
end

# else
if a then
  #one thing
else
  # another thing
end

# else if
if a then
  # one thing
elsif b then
  # another thing
end

# If as modifier

puts 'something' if a

# or
puts a if a
# means the code before is conditional

# if as a return value

d = if c < 11 then 'one'
    elsif b then 'two'
    elsif a then 'three'
    end

puts 'value of d'
puts d
