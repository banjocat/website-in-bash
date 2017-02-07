#!/bin/bash

# Creates routes
files=$(find $HTML_PATH -type f)

cat route.header
for i in $files; do
    route=$(echo $i | sed "s/$HTML_PATH\///")
    echo "
    \"/$route\")
        cat $i
    ;;"
done

echo "
    *)
        cat ${HTML_PATH}/404.html
    ;;
esac"



