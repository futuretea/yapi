all: docker
.PHONY: docker
docker:
	docker build -t futuretea/yapi .
up:
	docker-compose up
down:
	docker-compose down
clean:
	sudo rm -rf ~/docker
