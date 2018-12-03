require 'socket'
server = TCPSocket.new 'localhost', 2000
while line = server.gets
  puts line
end

server.close
