FROM debian:jessie

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y ruby
RUN gem install sinatra

ADD app.rb /app.rb

ENTRYPOINT [ "ruby", "/app.rb" ]
