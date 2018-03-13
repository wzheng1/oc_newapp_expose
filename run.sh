#!/bin/bash

python -m SimpleHTTPServer 8080 &
python -m SimpleHTTPServer 8081 &
python -m SimpleHTTPServer 8082 &
python -m SimpleHTTPServer 8083 &
wait
