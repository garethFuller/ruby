#!/usr/bin/ruby

require 'singleton'

class Gareth
  include Singleton

  attr_accessor :a

end

a = Gareth.instance
puts a.a = 1

b = Gareth.instance
puts b.a
b.a = 20
# b has modified a!
puts a.a
# a is equal to b, has same object ID
puts a == b
