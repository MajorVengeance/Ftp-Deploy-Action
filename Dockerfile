FROM alpine:latest

RUN apk --no-cache add lftp

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
RUN ["chmod", "+x", "/usr/bin/docker"]

ENTRYPOINT ["/entrypoint.sh"]