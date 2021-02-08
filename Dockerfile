FROM alpine:latest
RUN apk add --no-cache rtorrent ca-certificates
COPY files/rtorrent.conf /root/.rtorrent.rc
COPY files/start.sh /start.sh
RUN chmod +x start.sh
WORKDIR /templates
EXPOSE 49164
ENTRYPOINT /start.sh
