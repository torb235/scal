#!/bin/bash

# Ping Heroku server
if [[ -z "$APP_NAME" ]]; then
  echo "[ ERROR ] APP_NAME is set to the empty string"
else
  echo "[ INFO ] Starting keep-alive script..."
  bash keep_alive.sh &
fi
./scalling.sh
uvicorn src.api:app --host=0.0.0.0 --port="${PORT:-5000}"

