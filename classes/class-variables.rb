#!/usr/bin/ruby

class A

  attr_accessor :name, :descr
  # needs to be defined outside of the initilize function as instance vars
  # cannot be included in 'insatnce methods' and initilize is one of them
  @@instance = 0

  def initialize(name, descr)
    @name = name
    @descr = descr
  end

  def instance
    return @@instance
  end

  def instance=(val)
    @@instance = val
  end

end

# B inherits from A
class B < A

  attr_accessor :value

  def initialize(name, descr, value)
    super(name, descr)
    @@instance += 1;
  end

end

a = B.new('yo', 'what do ya know', 12)
puts a.instance
b = B.new('ho', 'why dont you go', 23)
puts b.instance
puts a.instance