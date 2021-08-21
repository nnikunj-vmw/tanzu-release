#!/bin/bash
echo "Within script"
echo ${concourse_coordinates}
echo "ls -lrt"
ls -lrt 
export workdir=$(pwd)
ls -lrt $workdir
echo "---"
ls -lrt $workdir/..
echo "ls -lrt bom-version"

ls -lrt $workdir/../bom-version
echo "workdir/../bom-version/version"
cat  $workdir/../bom-version/version
 