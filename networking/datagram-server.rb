#!/usr/bin/ruby

# there is no UDPServer it is just like the client
# insted of connect we call bind to tell it to listen
# then use send and recvfrom just like client

require 'socket'

port = ARGV[0]

ds = UDPSocket.new
ds.bind(nil, port)
loop do
  request, address = ds.recvfrom(1024) # wait fot the max 1kb from client
  response = request.upcase # this is what we will send back
  clientAdd = address[3] # ip of who sent
  clientName = address[2] # hostname of who sent it
  clientPort = address[1] # what port was it sent from
  ds.send(response, 0, clientAdd, clientPort) # send it back
  puts "Connection from: #{clientName} #{clientAdd} #{clientPort}"
end

