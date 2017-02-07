#!/bin/bash

if [ -z $PORT ]; then
    PORT=8000
fi


ncat -k -l -p $PORT -c 'bash handler.sh'

