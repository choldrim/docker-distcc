build:
	docker build -t distcc-server --force-rm=true .

run:
	docker-compose up -d
