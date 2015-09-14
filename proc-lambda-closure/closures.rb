#!/usr/bin/ruby

# lambdas and procs cerate closures that can have access to method args after
# the method is called, if the method for example returns a lambard that uses the arg
# not only this but two returning from one method can extend this local variables
# lifetime and modify the others value of that arg, for example

def someMethod(value)
  # getter
  a = lambda { value }
  # setter
  b = lambda { |x| value += x }
  return a,b
end

# set arg on some method first call to 0
get,set = someMethod(0)

# get value after method call
puts get.call()
# change value of arg
set.call(10)
# even though get is another var, it still has access to same shared value
# note the [] is the same as call
puts get[]
