all: docker
.PHONY: docker
docker:
	docker build -t futuretea/yapi .