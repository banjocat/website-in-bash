#!/bin/bash

# Creates routes
files=$(find $HTML_PATH -type f)

cat route.header
for i in $files; do
    route=$(echo $i | sed "s/$HTML_PATH\///")
    echo "    \"/$route\")"
    echo "        cat $i"
    echo "    ;;"
done

echo "    *)"
echo "        cat ./404.html"
echo "    ;;"
echo esac



