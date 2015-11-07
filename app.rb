#!/usr/bin/env ruby

require 'webrick'
require 'socket'

port = ARGV[0] ? ARGV[0] : 4567

server = WEBrick::HTTPServer.new(Port: port)
server.mount_proc '/' do |_, response| response.body Socket.gethostname; end
server.start
