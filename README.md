## Bash practice project
A web site in BASH for practice

### Requirements
* ncat
* a little insanity


### Limitations
* Text only
* Blocks until connection is complete

### How to use
Set $PORT to listened port. Defaults to 8000

Set $HTML_PATH to directory of static files. Defaults to html_demo


```
./server.sh
```
This creates all the routes by filename in $HTML_PATH. 
It then listens for connections at $PORT
