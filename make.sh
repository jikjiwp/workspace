#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage $0 <package name>"
    exit 1
fi
docker run --privileged --rm -v "${PWD}":/work   cgr.dev/chainguard/melange build --signing-key melange.rsa pkg/$1.yml
