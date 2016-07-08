#!/usr/bin/env ruby

require 'webrick'
require 'socket'

port    = ARGV[0] ? ARGV[0].to_i : 80
healthy = ARGV[1] ? ARGV[1].to_i : 200

server  = WEBrick::HTTPServer.new(Port: port)

server.mount_proc '/' do |_, response|
  response.body = Socket.gethostname
end

server.mount_proc '/health' do |_, response|
  response.status = healthy
  response.body   = healthy.between?(200, 399) ? 'ok' : 'failure'
end

server.start
