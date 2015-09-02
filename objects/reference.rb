#!/usr/bin/ruby

# a is ref to object of string thing
a = 'thing'

# b is now also a reference tp the same object
b = a

# modify through b
b[-1] = ''

# access through a
puts a
