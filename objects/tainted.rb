#!/usr/bin/ruby

# test if object is tainted (maybre from untrusted source)
# all objects created from this obj should also be tainted

a = 'some injection string'
a.taint
puts 'is it tainted?'
puts a.tainted?
puts 'are drived objects tainted?'
puts a.upcase.tainted?
puts 'substring tainted?'
puts a[2,5].tainted?
puts 'clones tainted?'
b = a.clone
puts b.tainted?
puts 'untaint b, is b still tainted?'
b.untaint
puts b.tainted?
