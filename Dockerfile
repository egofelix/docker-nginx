FROM alpine

MAINTAINER EgoFelix <docker@egofelix.de>

# Install nginx
RUN apk --no-cache add nginx wget

# Entry
HEALTHCHECK  --interval=30s --timeout=5s CMD wget --quiet --tries=1 --spider http://127.0.0.1/ || exit 1
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;'
