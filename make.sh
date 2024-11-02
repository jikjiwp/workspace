#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage $0 <package name>"
    exit 1
fi
~/go/bin/melange build --signing-key melange.rsa --pipeline-dir=./pipelines pkg/$1.yml
