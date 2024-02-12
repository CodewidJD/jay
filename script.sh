#!/bin/bash 

nohup filebrowser -r ../. &
disown 
nohup socat tcp-listen:6969,reuseaddr,fork tcp:localhost:8080 & 
disown
nohup python3 -m http.server 1199 & 
disown
nohup calibre-server /home/ubuntu/library --port 7777 --enable-auth --enable-local-write  &
disown 
