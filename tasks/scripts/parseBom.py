#!/usr/bin/python3

import os
import sys
import json
import shutil


rel_bom = open("bom/rel.json")
parsed_bom_file = json.load(rel_bom)
print (parsed_bom_file.get('release-bom').get('current-rel'))
isExist = os.path.exists("./bom-version")
if not isExist:
    os.makedirs("./bom-version")
    print("O/p dir created")
f = open("./bom-version/version", "w+")
f.write(parsed_bom_file.get('release-bom').get('current-rel'))
f.close()
 
print ("content of file written:\n")
f = open("bom-version/version", "r")
print(f.read())
f.close()