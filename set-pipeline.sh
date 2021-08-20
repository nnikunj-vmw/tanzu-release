#!/bin/sh
fly --target=tanzu login --concourse-url=http://127.0.0.1:8080 --username=admin --password=admin
fly --target=tanzu sync
y | fly -t tanzu set-pipeline \
                --var "git-private-key=$(cat ~/.ssh/id_rsa)" \
                -p lookout -c ./pipeline-tanzu.yaml 

fly -t tanzu up -p lookout


