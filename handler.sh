#!/bin/bash

function p404 {
    echo "404"
}

# Get path from HTTP header
read header
line=(${header// / })
path=${line[1]}


case $path in
    "/")
        echo "Hello Cassie"
        ;;
    "/pizza")
        echo "Pizza is good"
esac