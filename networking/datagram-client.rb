#!/usr/bin/ruby

require 'socket'

host, port, request = ARGV

ds = UDPSocket.new
ds.connect(host, port)
ds.send(request, 0) #send the request text
# wait for a response (1kb max)
response, address = ds.recvfrom(1024)
puts response
