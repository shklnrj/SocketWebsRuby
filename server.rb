require 'socket'
server = TCPServer.new 2000
loop do
  client = server.accept
  puts "connection from a client was accepted!"
  client.puts "Hello from the server!"
  client.puts "Time right now is #{Time.now.utc}"
  client.close
  puts "closed the connection!"
end
