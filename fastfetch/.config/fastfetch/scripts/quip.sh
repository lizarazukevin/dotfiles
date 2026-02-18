#!/usr/bin/env bash

if curl -s --max-time 1 https://icanhazdadjoke.com > /dev/null 2>&1; then
    curl -s -H "Accept: text/plain" https://icanhazdadjoke.com
fi
