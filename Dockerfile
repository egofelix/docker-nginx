FROM alpine

MAINTAINER EgoFelix <docker@egofelix.de>

# Install nginx
RUN apk --no-cache add nginx wget

# Entry
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;'
