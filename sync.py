import os
import sys

with open("./paths") as p_o:
    paths = p_o.read() # Get paths

with open("./custom") as c_o:
    custom = c_o.read() # Get custom

paths = paths.split("\n")
custom = custom.split("\n")
# Str --> List

def copy_files(home, root, option):
    if option == 0: # Push
        for part in home:
            if not os.path.exists("./" + part[0]):
                os.mkdir("./" + part[0])
            # cp config/fcitx5/~/.config/fcitx5/['-rf', '*'] ./config/fcitx5/
            print("cp " + str(part[1][0]) + " ~/." + str(part[0]) + str(part[1][1]) + " ./" + str(part[0]))
            cmd = "cp " + part[1][0] + " ~/." + part[0] + part[1][1] + " ./" + part[0]
            os.system(cmd)
        for part in root:
            if not os.path.exists("." + part[0]):
                os.mkdir("." + part[0])
            cmd = "cp " + part[1][0] + " " + part[0] + part[1][1] + " ." + part[0]
            os.system(cmd)
    elif option == 1: # Pull
        for part in home:
            if not os.path.exists("~/." + part[0]):
                os.mkdir("~/." + part[0])
            cmd = "cp " + part[1][0] + " ./" + part[0]+ part[1][1] + " ~/." + part[0] 
            os.system(cmd)
        cmd = ""
        for part in root:
            if part[1][1] == "*":
                diff_cmd = "diff -r " + part[0] + " " + "." + part[0] + " > /tmp/diff"
            else:
                diff_cmd = "diff " + part[0] + " " + "." + part[0] + " > /tmp/diff"
            if not os.path.exists("." + part[0]):
                cmd += "sudo mkdir -p " + part[0] + " && "
                diff_cmd = "echo 'not exists' > /tmp/diff"
            with open("/tmp/diff", "r") as d_r:
                diff = d_r.read()
            if diff != "":
                cmd += "sudo cp " + part[1][0] + " ." + part[0]+ part[1][1] + " " + part[0] + " && "
        if cmd != "":
            print("Need sudo: ")
            os.system(cmd)

def parts_list():
    home = []
    root = []
    for path in paths:
        info = ""
        if path == "":
            break
        if path[-1] == "/": # Folder
            info += "Folder: " + path
            parts = [path, ["-rf", "*"]] # cp -rf /xxx/xxx/* /xxx/xxx/
        else: # File
            info += "File: " + path
            parts = [path, ["-f", ""]] # cp -f /xxx/xxx /xxx/xxx
        if path[0] == "/": # In /
            info = "[/] " + info
            root += [parts]
        else:
            info = "[~] " + info
            home += [parts]
        print(info)
    return home, root

option = sys.argv[1]

if option == "push" or option == "Push":
    option = 0
elif option == "pull" or option == "Pull":
    option = 1
else:
    print("Invalid Option.")
    sys.exit()
home, root = parts_list()
copy_files(home, root, option)
