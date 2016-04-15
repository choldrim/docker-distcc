# docker-distcc
distcc image
base on:
debian 8 (jessie)
distcc 3.1

## Useage:
- run with docker-run
```shell
docker run -d --name distcc-server -e NETWORK=10.0.0.1/16 -p 3632:3632 --user distccd choldrim/distcc
```

- (or run with docker-compose)
```shell
git clone https://github.com/choldrim/docker-distcc.git && cd docker-distcc
docker-compose up -d
```

- distcc log
```shell
docker logs -f distcc-server
```


