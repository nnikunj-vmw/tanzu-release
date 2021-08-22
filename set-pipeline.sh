#!/bin/sh
fly --target=tanzu login --concourse-url=http://192.168.1.6:8080 --username=admin --password=admin
fly --target=tanzu sync
echo y | fly -t tanzu set-pipeline \
                --var "git-private-key=$(cat ~/.ssh/id_rsa)" \
                --var "docker_user_name=$(cat ~/.ssh/docker_user_name)" \
                --var "docker_password=$(cat ~/.ssh/docker_password)" \
                --var "concourse_user=admin" \
                --var "concourse_password=admin" \
                --var "concourse_coordinates=http://192.168.1.6:8080" \
                -p lookout -c ./pipeline-tanzu.yaml 

fly -t tanzu up -p lookout


