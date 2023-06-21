SHELL := /bin/bash

nginx-start: 
	docker-compose -f ./nginx/docker-compose.yaml up -d

prom-start: 
	docker-compose -f ./prometheus/docker-compose.yaml up -d

nginx-stop:
	docker-compose -f ./nginx/docker-compose.yaml stop

prom-stop:
	docker-compose -f ./prometheus/docker-compose.yaml stop

scrape-start:
	make nginx-start
	make prom-start

scrape-stop:
	make prom-stop
	make nginx-stop
