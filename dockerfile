FROM alpine
RUN apk update && apk upgrade && apk add bash
RUN apk add nextcloud-client
COPY entrypoint.sh /tmp
RUN adduser -D -H user && chmod +x /tmp/entrypoint.sh
ENTRYPOINT ["su", "user", "-c", "/tmp/entrypoint.sh"]
