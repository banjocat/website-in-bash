#!/bin/bash

if [ -z $PORT ]; then
    PORT=8000
fi

trap "echo Server shutting down;exit" SIGHUP SIGINT SIGTERM

echo "Starting server on 0.0.0.0:$PORT"
while true; do
    ncat -l -p $PORT -c 'bash handler.sh'
done

