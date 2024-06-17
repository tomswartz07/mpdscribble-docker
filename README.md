# MPD Scribble Docker- Music Player Daemon Scrobble Writer

### What is MPD?
Music Player Daemon (MPD) is a free and open music player server. It plays audio
files, organizes playlists and maintains a music database. In order to interact
with it, a client program is needed. The MPD distribution includes mpc, a simple
command line client.
> [wikipedia.org/wiki/Music_Player_Daemon](https://en.wikipedia.org/wiki/Music_Player_Daemon)

MPDScribble is an official client used to write information about tracks being
played to a remote service for information aggregation.

https://www.musicpd.org/clients/mpdscribble/

### How to use this image

Run the image with two environment variables defining the remote MPD location.

Attach a volume mount with a configuration file with your selected Scrobble locations.

Tested and validated to be working with [Maloja](https://github.com/krateng/maloja).


```sh
docker run --name mpdscribble \
-e "MPD_HOST=192.168.1.1" \
-e "MPD_PORT=6600" \
-v "./mpdscribble.conf:/etc/mpdscribble.conf"
-d ghcr.io/tomswartz07/mpdscribble-docker:latest
```
