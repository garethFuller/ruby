#!/usr/bin/ruby

a = 1.1

# second elem of returned array is what we sent in [1.1] first is
# coerced value (if changed), in this case it is 1.0
puts a.coerce(1).inspect
