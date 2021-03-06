[![Docker Stars](https://img.shields.io/docker/stars/pixelmilk/live.svg)](https://hub.docker.com/r/pixelmilk/live/) [![Docker Pulls](https://img.shields.io/docker/pulls/pixelmilk/live.svg)](https://hub.docker.com/r/pixelmilk/live/)

# nginx live

[Nginx](http://nginx.org) + [Nginx-RTMP](https://github.com/arut/nginx-rtmp-module)

# use

[![](https://badge.imagelayers.io/pixelmilk/live:1.3.5.svg)](https://imagelayers.io/?images=pixelmilk/live:1.3.5)

You can run the Nginx by executing the following command.

> it is highly advised to run the container on the host net for performance

```
docker run --rm --network host --cap-add SYS_ADMIN  -d pixelmilk/live:1.3.5-0.0.2
```

There is an amazing example, which many seem to use, the [Big Bunny](https://peach.blender.org/download/) to test your setup. E.g.

```
ffmpeg -loglevel verbose -re -i ~/big_buck_bunny_720p_h264.mov -vcodec libx264 \ 
    -vprofile baseline -acodec libmp3lame -ar 44100 -ac 1 \
    -f flv rtmp://localhost:1935/feed/live
```

So there is the `feed` endpoint at port `1935` which is an `RTMP` target. By default [http://localhost/hls](http://localhost/hls) and [http://localhost/dash](http://localhost/hls) provide you with multiple streams for HLS and MPEG-Dash.

The mount path for feeds is `/var/media`.

# build

```
./build.sh
```

# push

```
./push.sh
```

# License
[MIT](/LICENSE)