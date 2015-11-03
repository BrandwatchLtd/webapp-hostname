# webapp-hostname

A webapp that runs a webserver to return a hostname.

## Usage

```
build -t webapp-hostname .

# default listen port is '4567', change by setting command:
docker run --rm webapp-hostname "-e 'set :port, 4444'"
```
