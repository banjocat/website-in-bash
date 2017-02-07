#!/bin/bash

if [ -z $PORT ]; then
    PORT=8000
fi

if [ -z $HTML_PATH]; then
    HTML_PATH=html_demo
fi

export HTML_PATH
bash create_routes.sh > handler.sh

trap "echo Server shutting down;exit" SIGHUP SIGINT SIGTERM

echo "Starting server on 0.0.0.0:$PORT"
while true; do
    ncat -l -p $PORT -c 'bash handler.sh'
done

