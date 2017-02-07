#!/bin/bash

function p404 {
    echo "404"
}

# Get path from HTTP header
read header
line=(${header// / })
path=${line[1]}


# allowed routes
case $path in
    "/")
        echo "Hello Cassie"
        ;;
    "/pizza")
        echo "This is a pizza page"
        ;;
    *)
        cat ./404.html
        ;;

esac
