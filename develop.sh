#!/bin/bash

if [ "$1" = "b" ]; then
  docker compose -f compose.yaml build
fi
docker compose -f compose.yaml up
