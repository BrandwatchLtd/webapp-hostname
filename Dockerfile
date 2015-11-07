FROM alpine:3.2

RUN apk update
RUN apk add ruby

ADD app.rb /app.rb

ENTRYPOINT [ "ruby", "/app.rb" ]
