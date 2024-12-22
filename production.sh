#!/bin/bash

if [ "$1" = "b" ]; then
  docker compose -f compose.prod.yaml build
fi
docker compose -f compose.prod.yaml up
