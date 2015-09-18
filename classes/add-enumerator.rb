#!/usr/bin/ruby

# create a class and make it enumerable with an each method

class Gareth
  attr_accessor :a, :b

  def initialize(a, b)
    @a, @b = a, b
  end

  include Enumerable

  def each(&block)
    yield @a
    yield @b
  end

end

a = Gareth.new(10, 20)

a.each do |x|
  puts x
end

# as we have included enumerable we have access to many new functions

allTen = a.all? do |x|
  x == 10
end

puts allTen
