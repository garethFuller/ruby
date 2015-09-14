#!/usr/bin/ruby

# ----------- literal example -----------

# this is just like { |x| x + 1 }
a = ->(x) { x + 1 }

puts '========== call sample lambda with 2 arg ========='
puts a.call(2)

# function takes 2 arguments and defines 3 local vars, just like methods
f = ->(a,b; c,d,e) {
  # ...
}

# can use default args
f = ->(a, b=true) {
  # ...
}

# parenthasis are also optional
f = ->x { x + 1 }

puts '=============== funky example of passing as args for other lambards ==========='

def someThingBogus(a, b)
  ->(x) { a.call(b.call(x)) }
end

c = someThingBogus(->x{ x + 1 }, ->x{ x * 3 })
puts c.call(2)

# in the above examle it calls this
# (2 * 3) + 1
#
# personally though i find this more readable, at least for this example :D
def readable(val)
  (val * 3) +1
end

puts readable 2

# Returning
#
# In a lambda we can return from inside the lambda only (like a method)
# whereas in a proc we will returned from the lexical scope!
#
# Arguments
#
# procs are very flexible, will unpack arrays for multiple arguments etc
# whereas lambards are more like methods they expect the correct arguments
# to be sent to them and will error!
