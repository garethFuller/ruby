#!/usr/bin/ruby

a = 'some string'

# check if we can run the append method
puts a.respond_to? :"<<"
# above only checks of name of the method

# FIXNUM and BIGNUM also have the << method but it does something different
# there is no 'actual' solution for this but in this case could do something like
puts a.respond_to? :"<<" and not a.is_a? Numeric