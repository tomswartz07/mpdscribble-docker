FROM alpine:latest

LABEL org.opencontainers.image.authors="Tom Swartz <tom@tswartz.net>" \
    org.opencontainers.image.title="MPDScribble" \
    org.opencontainers.image.description="MPD Scribble - Music Player Daemon Logging tool" \
    org.opencontainers.image.source="https://github.com/tomswartz07/mpdscribble-docker"

RUN apk --no-cache add \
        mpdscribble \
        mpc;

ENV MPD_HOST="localhost"
ENV MPD_PORT="6600"

VOLUME /mpdscribble
WORKDIR /mpdscribble

CMD ["/usr/bin/mpdscribble", "--no-daemon", "--conf", "/etc/mpdscribble.conf"]
HEALTHCHECK CMD ps aux | grep '[m]pdscribble' || exit 1
