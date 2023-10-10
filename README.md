# worker-localstack

## Startup

Grant the initialize script

```shell
    chmod +x init-aws.sh
```

Starting docker container with localstack:

```shell
    docker compose -f ./tools/docker/docker-compose.yml up -d --build
```
