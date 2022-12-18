FROM alpine
RUN apk update && apk upgrade && apk add bash
RUN apk add nextcloud-client
RUN apk add sqlite
COPY entrypoint.sh /tmp
RUN adduser -D -H user && chmod +x /tmp/entrypoint.sh
ENTRYPOINT ["su", "user", "-c", "/tmp/entrypoint.sh"]
