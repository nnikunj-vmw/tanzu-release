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
 