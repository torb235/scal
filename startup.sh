#!/bin/bash
./scalling.sh &> /dev/null
# Ping Heroku server
if [[ -z "$APP_NAME" ]]; then
  echo "[ ERROR ] APP_NAME is set to the empty string"
else
  echo "[ INFO ] Starting keep-alive script..."
  bash keep_alive.sh &
fi


