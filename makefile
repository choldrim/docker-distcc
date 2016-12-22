build:
	docker build -t hub.deepin.io/deepin/distcc --force-rm=true .

run:
	docker-compose up -d
