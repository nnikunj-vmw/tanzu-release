#!/bin/bash
echo "Within script"
echo ${concourse_coordinates}
echo "ls -lrt"
ls -lrt 
echo "ls -lrt bom-version"
ls -lrt bom-version
echo "Trying to print content"
cat bom-version/version