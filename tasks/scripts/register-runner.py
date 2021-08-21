#!/usr/bin/python3

import os
import sys
import json
import subprocess


args = sys.argv[1:]
bomFile = args[1]
concourse_coordinates = args[2]
concourse_user = args[3]
concourse_password = args[4]
print("Expcting Bom file at: "+str(bomFile))

rel_bom = open(bomFile)
parsed_bom_file = json.load(rel_bom)

print (parsed_bom_file.get('release-bom').get('current-rel'))

child_proccess = subprocess.Popen(args, stdin=subprocess.PIPE, stdout=subprocess.PIPE)

child_proccess.stdin.write(b"I love beans \n I like cars")
child_process_output = child_proccess.communicate()[0]

child_proccess.stdin.close()

print(child_process_output)

