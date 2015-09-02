#!/usr/bin/ruby

# explicit conversions
#
# Most common;
# to_s : String
# to_i : Integer
# to_f : Float
# to_a : Array
#
# Implicit conversions
# For objects that want to be 'like' another object they
# may internally call to_str for example to get methods like
# concatination from the string class. This does not mean they are strings
# one example of this is the error class.