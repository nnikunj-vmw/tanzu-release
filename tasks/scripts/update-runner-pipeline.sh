#!/bin/bash
echo "{concourse_coordinates}"
echo ${concourse_coordinates}
echo "{concourse_user}"
echo ${concourse_user}
echo "{concourse_password}"
echo ${concourse_password}
echo "{docker_user_name}"
echo ${docker_user_name}
echo "{docker_password}"
echo ${docker_password}
echo "{git_private_key}"
echo ${git_private_key}
export workdir=$(pwd)
echo "Current working dir: "$workdir
branch=`cat $workdir/../bom-version/branch`
echo "Obtained branch: "$branch
#fly --target=tanzu-runner login --concourse-url=http://192.168.1.6:8080/  --username=admin --password=admin
fly --target=tanzu-runner login --concourse-url=${concourse_coordinates} --username=${concourse_user} --password=${concourse_password}
fly --target=tanzu-runner sync
echo y | fly -t tanzu-runner set-pipeline \
                --var "git_private_key=${git_private_key}" \
                --var "docker_user_name=${docker_user_name}" \
                --var "docker_password=${docker_password}" \
                --var "branch"=$branch
                -p lcm_runner -c $workdir/runner-pipeline.yaml 

fly -t tanzu-runner up -p lcm_runner
fly -t tanzu-runner tj -j lcm_runner/lcm
