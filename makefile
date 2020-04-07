build:
	docker build -t maxkratz/distcc:latest --force-rm=true .

run:
	docker-compose up -d
