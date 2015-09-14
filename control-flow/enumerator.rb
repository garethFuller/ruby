#!/usr/bin/ruby

# enumerators provide iteratable functions like map etc on objects that
# would not normaly have them for example string has a each_char func and we
# can use this as enum to possibly get a map etc

a = 'gareth'

b = a.enum_for(:each_char).map do |x|
  x.succ
end

puts b.inspect

# or even better in 1.9 we dont need to do most of this enum function casting

b = a.chars.map do |x|
  x.succ
end

puts b.inspect
