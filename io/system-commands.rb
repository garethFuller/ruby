#!/usr/bin/ruby

# can use streams, like file streams to run system commands and capture the output
# like the bellow
uptime = open('|uptime') do |cmd|
  cmd.gets
end

puts uptime

# can even read in an entire site as a stream!
require 'open-uri'
f = open('http://www.google.com')
page = f.read
f.close

# this is a large string, uncomment to see it :D
# puts page