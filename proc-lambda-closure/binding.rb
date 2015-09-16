#!/usr/bin/ruby

# Bindings are ways of interacting with instance vars as an example
# we have an instance of the bellow method with a local variable being n
# n being the argument it was created with.
#
# this object 'doubler' has a binding function we can eval and chnage
# in the bellow case we are changing the value of n that it was created
# with to 3

def multiplier(n)
  lambda {|data| data.collect{|x| x*n } }
end

doubler = multiplier(2)

puts '----------- doubler not modified -----------'
puts doubler.call([1,2,3]);

# now modify the binding for the n arg in the doubler instance of the
# multiplier method
eval("n=3", doubler.binding);
puts '------------- doubler binding modified to 3 -----------'
puts doubler.call([1,2,3])

# another way to do this as binder has an eval method itself
puts '----------- calling the eval on binder object ----------'
doubler.binding.eval('n=4')
puts doubler.call([1,2,3])
