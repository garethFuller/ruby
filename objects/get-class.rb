#!/usr/bin/ruby

obj = 'gareth'

# Obj representing string class
puts obj.class

# get heirachy
puts obj.class.superclass
puts obj.class.superclass.superclass

puts obj.class == String
