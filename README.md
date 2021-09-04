# docker-distcc

[![Build Status](https://github.ci.maxkratz.com/api/badges/maxkratz/docker-distcc/status.svg)](https://github.ci.maxkratz.com/maxkratz/docker-distcc)

distcc image
based on:
debian 10 (buster),
distcc 3.3

Prebuild images can be found at [Dockerhub](https://hub.docker.com/r/maxkratz/distcc).

## Usage
- Run with docker-run
```shell
docker run -d --name distcc-server -e NETWORK=10.0.0.1/16 -p 3632:3632 --user distccd maxkratz/distcc:latest
```

- Or run with docker-compose
```shell
git clone https://github.com/maxkratz/docker-distcc.git && cd docker-distcc
docker-compose up -d
```

- distcc log
```shell
docker logs -f distccd
```

## Dockerfile
The Dockerfile can be found at:
[https://github.com/maxkratz/docker-distcc/blob/master/Dockerfile](https://github.com/maxkratz/docker-distcc/blob/master/Dockerfile)

## Issues & Contribution
If you find any problems, bugs or missing packages, feel free to open an [issue on github](https://github.com/maxkratz/docker-distcc/issues).
