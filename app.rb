#!/usr/bin/env ruby

require 'webrick'
require 'socket'

port    = ARGV[0] ? ARGV[0] : 4567
healthy = ARGV[1] ? ARGV[1] : 200

server  = WEBrick::HTTPServer.new(Port: port)

server.mount_proc '/' do |_, response|
  response.body Socket.gethostname
end

server.mount_proc '/health' do |_, response|
  response.body 'OK'
  response.status healthy
end

server.start
