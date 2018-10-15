
# Demo Nodejs + Prometheus

## Start

```
yarn
npm start
```

## Make some metrics

```
curl http://localhost:8000/
curl http://localhost:8000/
curl http://localhost:8000/

curl http://localhost:8000/ -X POST

curl http://localhost:8000/ -X PUT
curl http://localhost:8000/ -X PUT

curl http://localhost:8000/ -X DELETE
```

## Fetch metrics

```
curl http://localhost:8000/metrics | grep req_counter
```