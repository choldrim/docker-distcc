# docker-distcc
distcc image
base on:
debian 8 (jessie)
distcc 3.1

## Useage:
### docker cli:
```shell
docker run -d --name distcc-server -e NETWORK=10.0.0.1/16 -p 3632:3632 --user distccd choldrim/distcc
# tail -f log
docker logs -f distcc-server
```

### docker-compose:
```shell
git clone https://github.com/choldrim/docker-distcc.git && cd docker-distcc
docker-compose up -d
```

