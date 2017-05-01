.PHONY: build

build:
	docker info
	docker build -t leonfs/nginx:latest .

test: 
	docker run --name nginx -d -p 8080:80 leonfs/nginx:latest
	sleep 10
	curl --retry 10  --retry-delay 5 -v http://localhost:8080
	curl --retry 10  --retry-delay 5 -v http://localhost:8080/healthz

