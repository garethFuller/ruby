#!/usr/bin/ruby

class A
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

print 'yo, whats your name: '
name = gets
print 'and, how old be you?: '
age = gets
# chomp gets rid of the new line after input
a = A.new(name.chomp, age.chomp)
# have to use double quotes for strings that 'do things', in this case
# interpolating variables
puts "so your name is #{a.name} and your age is #{a.age} ... interesting ..."
# example of expressions also in double strings, hard set year, i know lame
puts "so that means you where born in #{2015 - a.age.to_i} right?"
