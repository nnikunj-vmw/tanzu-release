#!/usr/bin/python3

import os
import sys
import json


rel_bom = open("bom/rel.json")
parsed_bom_file = json.load(rel_bom)
f = open("/var/bom-version/version", "w")
f.write(parsed_bom_file.get('release-bom').get('current-rel'))
f.close()

print (parsed_bom_file.get('release-bom').get('current-rel'))

print ("content of file written:\n")
f = open("/var/bom-version/version", "r")
print(f.read())
f.close()