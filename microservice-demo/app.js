
const express = require('express');
const Prometheus = require('prom-client');
const app = express();

const metricsInterval = Prometheus.collectDefaultMetrics();
const req_counter = new Prometheus.Counter({
    name: 'req_counter',
    help: 'Total number of requests',
    labelNames: ['method']
});

app.all('/', (req, res) => {
    req_counter.inc({
        method: req.method,
    });
    res.json({ status: 'ok' });
});

app.get('/metrics', (req, res) => {
    res.set('Content-Type', Prometheus.register.contentType);
    res.end(Prometheus.register.metrics());
});

const server = app.listen(8000, () => {
    console.log(`Example app listening on port 8000!`)
});
