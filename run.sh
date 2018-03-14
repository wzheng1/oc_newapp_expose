#!/bin/bash

python -m SimpleHTTPServer 8080 &
python -m SimpleHTTPServer 8081 &
python -m SimpleHTTPServer 8083 &
python -m SimpleHTTPServer 8084 &
python -m SimpleHTTPServer 8085 &
python -m SimpleHTTPServer 8087 &
python -m SimpleHTTPServer 8090 &
wait
