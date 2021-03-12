#!/bin/sh

if [ -z ${SLACK_WEBHOOK_URL} ] || [ -z ${SLACK_CHANNEL} ] ;
  then
    echo "[ERROR] required environment variables does not exist"
    exit 1
fi

sed -i "s|__SLACK_WEBHOOK_URL__|${SLACK_WEBHOOK_URL}|g" config/alertmanager.yml
sed -i "s|__SLACK_CHANNEL__|${SLACK_CHANNEL}|g" config/alertmanager.yml
