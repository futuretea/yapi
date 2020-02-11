all: docker
.PHONY: docker
docker:
	docker build -t futuretea/yapi .
up:
	docker-compose up -d
down:
	docker-compose down
lock:
	docker-compose exec yapi touch /app/yapi/init.lock
clean:
	sudo rm -rf ~/docker
