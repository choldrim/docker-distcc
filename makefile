build:
	docker build -t choldrim/distcc --force-rm=true .

run:
	docker-compose up -d
