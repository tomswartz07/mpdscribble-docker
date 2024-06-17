FROM alpine:latest

LABEL org.opencontainers.image.authors="Tom Swartz <tom@tswartz.net>" \
    org.opencontainers.image.title="MPDScribble" \
    org.opencontainers.image.description="MPD Scribble - Music Player Daemon Logging tool" \
    org.opencontainers.image.source="https://github.com/tomswartz07/mpdscribble-docker"

RUN apk --no-cache add \
        mpdscribble \
        mpc;

VOLUME /mpdscribble
WORKDIR /mpdscribble

CMD ["/usr/bin/mpdscribble", "--no-daemon", "--conf", "/etc/mpdscribble.conf"]
