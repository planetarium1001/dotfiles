#! /usr/bin/python
import os
import sys
with open("./paths", 'r') as paths_read:
    paths = paths_read.read().split("\n")
selection = input("Push OR Pull: ")

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

if selection == "Push" or selection == "push":
    options = ['~/.', './']
    copy_files(options)
    os.system("git init && git add . && git commit -m 'Update' && git push")
    print("Push: Done.")
elif selection == "Pull" or selection == 'pull':
    options = ['./', '~/.']
    os.system("git pull")
    copy_files(options)
    print("Pull: Done.")
else:
    print("Invalid Input")
    sys.exit()
