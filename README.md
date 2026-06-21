# SRBMiner Cereblix Mining with Docker

Mining Cereblix (CRB) menggunakan Docker.

## Build

```bash
docker build -t testes .
```

## Run

```bash
docker run -d --name mining testes
```

## View Logs

```bash
docker logs -f mining
```

## Stop

```bash
docker stop mining
docker rm mining
```
