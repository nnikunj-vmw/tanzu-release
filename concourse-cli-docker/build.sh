#!/bin/bash

docker build . -t nilabhnikunj/nilabhnikunj/concourse-cli:1.0

docker push nilabhnikunj/nilabhnikunj/concourse-cli:1.0
