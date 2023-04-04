#!/bin/bash
# check if URL argument is provided
if [[ $# -eq 0 ]]; then
  echo "Usage: $0 URL"
  exit 1
fi

# send GET request to URL with curl and store response in a variable
response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

# check if response is 200 OK, if so, display the body
if [[ $response -eq 200 ]]; then
  curl -s "$1"
else
  echo "Error: received $response status code"
  exit 1
fi
