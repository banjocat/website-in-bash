## Bash practice project
A static web server in BASH

### Requirements
* ncat
* a little insanity

### How to use
* Set $PORT to listened port. Defaults to 8000
* Set $HTML_PATH to directory of static files. Defaults to html_demo


```
./server.sh
```
#### What this does?
* This creates all the routes by filename in $HTML_PATH. 
* It creates them in a file called handler.sh
* This file is not part of version control
* It then listens for connections at $PORT

#### Limitations
* Text only
* Blocks until connection is complete

