build:
	@echo "building docker image..."
	@docker build -t webapp-hostname .

run:
	@echo "running docker image..."
	@docker run --rm webapp-hostname

test:
	@echo -n "checking json syntax..."
	@cat marathon-webapp-hostname.json | jq . > /dev/null 2>&1 && echo "ok" || echo "fail"

deploy: test
	@echo "deploying docker instance via marathon..."
	@curl -s -XPOST -d @marathon-webapp-hostname.json mesos0:8080/v2/apps -H "Content-Type:application/json" | jq .

deploy-tcp: test
	@echo "deploying docker instance via marathon..."
	@curl -s -XPOST -d @marathon-webapp-hostname-tcp.json mesos0:8080/v2/apps -H "Content-Type:application/json" | jq .
