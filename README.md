# Scrape files containing metrics

## Summary
- NGINX metrics endpoint for hosting metrics-files
- Prometheus configured to scrape metrics from dockersized NGINX

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
