#!/bin/bash
# Sends a GET request to the specified URL and displays the body of the response
curl -s -o /dev/null -w "%{http_code}\n" "$1" | grep -q 200 && curl -s "$1"
