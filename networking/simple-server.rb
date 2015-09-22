#!/usr/bin/ruby

require 'socket'

server = TCPServer.open(200)
loop { #infinate loop
  client = server.accept # wait for client to connect
  client.puts(Time.now.ctime) #send time to client
  client.close # disconnect from client
}
