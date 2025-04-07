#! /usr/bin/python
import os
import sys
with open("./paths", 'r') as paths_read:
    paths = paths_read.read().split("\n")
selection = input("Update and Reload [YES] OR [NO]: ")
print("------------------------------------------")

def copy_files(options):
    for path in paths:
        if path == "":
            break
        if path[-1] == "/":
            print("Flolder: ", path)
            os.system("cp -rf " + options[0] + path + '* ' + options[1] + path)
        else:
            print("File: ", path)
            os.system("cp -f " + options[0] + path + ' ' + options[1] + path)

if "y" in selection or "Y" in selection:
    options = ['./', '~/.']
    copy_files(options)
    os.system("./scripts/reload.sh")
    print("------------------------------------------")
    print("Pull: Done.")
else:
    print("Exit")
    sys.exit()
