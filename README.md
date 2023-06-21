# Scrape files containing Prometheus metrics

## Summary
This is an MVP which illustrates how to scrape files containing `promtool` validated metric data

Create dockerized NGINX/Prometheus
- NGINX with Prometheus-friendly metrics endpoint
- Prometheus with dockersized NGINX scrape-target

## Assumptions
Running Docker Desktop or equivalent, `docker-compose` also installed 

## Steps
```
$ METRICS=</path/to/file>
$ git clone https://github.com/mohsanjaffery/scrape-metric-file.git
$ cd scrape-metric-file
$ cp $METRICS ./nginx/src/html/metrics
$ make scrape-start
$ open -a "/Applications/<browser>.app" localhost:9090
```
