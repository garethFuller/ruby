#!/usr/bin/ruby

require 'socket'

# get host and port from command line args
host, port = ARGV

socket = TCPSocket.open(host, port)
while line = socket.gets
  puts line.chomp
end

# close socket when done
socket.close
