# Nginx Live

```
docker build -t nginx-live .
```

```
docker run --rm -p 1935:1935 -p 8080:8080 -v $PWD/src:/var/www/html -d nginx-live
```

```
ffmpeg -loglevel verbose -re -i udp://@239.192.64.33:4444?fifo_size=1000000?buffer_size=1000000 \
    -vcodec libx264 \            
    -vprofile baseline -acodec libmp3lame -ar 44100 -ac 1 \
    -f flv rtmp://localhost:1935/dash/live
```