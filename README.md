# Scrape Files containing metrics

## Summary
NGINX metrics endpoint for hosting metrics-files
Prometheus configured to scrape metrics from dockersized NGINX

<br/><br/>
## Assumptions
Running Docker Desktop or equivalent on Mac with Firefox installed

<br/><br/>
## Steps
```
$ METRICS=</path/to/file>
$ git clone https://github.com/mohsanjaffery/scrape-metric-file.git
$ cd scrape-file
$ cp $METRICS ./nginx/src/html/metrics
$ make scrape-start
$ open -a "/Applications/Firefox.app" localhost:9090
```
