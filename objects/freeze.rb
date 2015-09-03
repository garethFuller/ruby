#!/usr/bin/ruby

# freeze an obj to make it immutable
s = 'ice'
s.freeze
puts 'is it frozen'
puts s.frozen?
# try to make it uppercase
s.upcase!
# this will error, copies are also frozen FYI
