# loki-alerts-docker
Alerting with Loki v2 on Docker Example

## Usage

Dependency is to install the loki docker driver:

```
$ docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
```

Replace your config:

```
$ SLACK_WEBHOOK_URL="https://hooks.slack.com/services/xx/xx/xx" SLACK_CHANNEL="#notifications" ./parse_configs.sh
```

Boot the stack:

```
$ docker-compose up -d
```

Then follow the [blogpost](https://blog.ruanbekker.com/blog/2020/11/06/how-to-setup-alerting-with-loki/):
- https://blog.ruanbekker.com/blog/2020/11/06/how-to-setup-alerting-with-loki/


