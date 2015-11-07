# webapp-hostname

A webapp that runs a webserver to return a hostname.

## Usage

```
build -t webapp-hostname .

# default listen port is '4567', change by setting command:
docker run --rm webapp-hostname 4444

# deploy to marathon using curl
curl -XPOST -d @marathon-webapp-hostname.json mesos0:8080/v2/apps -H "Content-Type:application/json"

# or use the tasks from the make file, such as destroy:
make destroy
```
