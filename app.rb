#!/usr/bin/env ruby

require 'sinatra'
require 'socket'

set :bind, '0.0.0.0'
set :port, ARGV[0] if ARGV[0]

get '/' do
  Socket.gethostname
end
