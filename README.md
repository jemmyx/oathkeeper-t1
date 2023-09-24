docker pull oryd/oathkeeper:v0.38.9-beta.1

https://www.ory.sh/docs/oathkeeper/configure-deploy

### generate a key for the RS256 algorithm that will be used by the id_token mutator

```
$ docker run oryd/oathkeeper:v0.40.6 credentials generate --alg RS256 > jwks.json
```

## Build & Run

```
docker pull oryd/oathkeeper:v0.40.6
docker build -t ory-oathkeeper-demo .
docker run --rm   --name ory-oathkeeper-demo   -p 4455:4455   -p 4456:4456   ory-oathkeeper-demo   --config ./config.yaml   serve
```
