#!/bin/bash

RESTART_EXIT_CODE=42

while true; do
    ./manager $@
    EXIT_CODE=$?
    if [ $EXIT_CODE -ne $RESTART_EXIT_CODE ]; then
      exit $EXIT_CODE
    fi
done
