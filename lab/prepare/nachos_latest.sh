#!/bin/bash
# Copy from local
cp -r ../../Nachos nachos

# Build docker
docker build --tag nachos:${1:-beta} --tag nachos:latest --file original.Dockerfile .

# Clean up
rm -r nachos
