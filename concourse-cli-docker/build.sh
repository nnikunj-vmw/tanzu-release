#!/bin/bash

docker build . -t nilabhnikunj/concourse-cli:latest

docker push nilabhnikunj/concourse-cli:latest
