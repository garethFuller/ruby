#!/usr/bin/ruby

# Used a mixin previously on ther Enumerabe class demo, all it does
# is aloows the class to have access to a bunch of new methods. That's if
# the class including it forefills some pre set requirements, for the enumerable
# its the presence of a each method

class Dummy
  # this is actually a private instance method of module, implicitly invoked on self
  # Comparable is the arg to the method
  include Comparable
end

# can include modules inside modules! classes cannot be included into classes

# when a module is included the module it is included into gets all of instance
# methods!

# can also use Object.extend to include instance methods as singleton methods on
# object. If the object is a class it gets them as methods on the class

test = Object.new
def test.each
  yield 1
  yield 3
  yield 2
end
test.extend(Enumerable)
puts test.sort
