FROM alpine:3.2

RUN apk update
RUN apk add ruby-2.2.2-r0

ADD app.rb /app.rb

ENTRYPOINT [ "ruby", "/app.rb" ]
