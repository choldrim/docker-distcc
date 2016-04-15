build:
	docker build -t hub.deepin.io/distcc --force-rm=true .

run:
	docker-compose up -d
