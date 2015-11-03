FROM debian:jessie

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ruby
RUN gem install sinatra

ENTRYPOINT [ "ruby", "-rsinatra", "-e \"require 'socket'; get('*') { Socket.gethostname }\"" ]
