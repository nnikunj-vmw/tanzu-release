#!/bin/sh
fly --target=tanzu login --concourse-url=http://192.168.1.6:8080 --username=admin --password=admin
fly --target=tanzu sync
echo y | fly -t tanzu set-pipeline \
                --var "git-private-key=$(cat ~/.ssh/id_rsa)" \
                -p lookout -c ./pipeline-tanzu.yaml 

fly -t tanzu up -p lookout


