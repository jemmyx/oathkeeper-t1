FROM oryd/oathkeeper:v0.40.6
COPY config.yaml /config.yaml
COPY rules.json /rules.json
COPY jwks.json /jwks.json