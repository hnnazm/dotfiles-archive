#!/bin/bash

get() {
  curl -X GET "$1" \
    -H "accept: application/json" \
    | bat -l json
}

postd() {
  # Content-Type: application/x-www-form-urlencoded
  url=$1;shift
  curl -X POST "${url}" \
    -H "accept: application/json" \
    -d "$@"
}

postf() {
  # Content-Type: multipart/form-data
  url=$1;shift
  curl -X POST "${url}" \
    -H "accept: application/json" \
    -F "$@"
}
