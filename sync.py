import os
import sys
import getpass

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
            if part[1][0] == "-rf": # Folder
                path = part[0]
            elif part[1][0] == "-f": # File
                path = part[0].replace(part[0].split("/")[-1], "")
            if not os.path.exists("./" + path):
                os.makedirs("./" + path)
            cmd = "cp " + part[1][0] + " ~/." + part[0] + part[1][1] + " ./" + part[0]
            print("[cp]", part[0])
            os.system(cmd)
        for part in root:
            if part[1][0] == "-rf": # Folder
                path = part[0]
            elif part[1][0] == "-f": # File
                path = part[0].replace(part[0].split("/")[-1], "")
            if not os.path.exists("./root" + path):
                os.makedirs("./root" + path)
            cmd = "cp " + part[1][0] + " " + part[0] + part[1][1] + " ./root" + part[0]
            print("[cp]", part[0])
            os.system(cmd)
    elif option == 1: # Pull
        for part in home:
            if part[1][0] == "-rf": # Folder
                path = part[0]
            elif part[1][0] == "-f": # File
                path = part[0].replace(part[0].split("/")[-1], "")
            if not os.path.exists("~/." + path):
                os.makedirs("~/." + path)
            cmd = "cp " + part[1][0] + " ./" + part[0]+ part[1][1] + " ~/." + part[0] 
            print("[cp]", part[0])
            os.system(cmd)
        cmd = ""
        for part in root:
            if part[1][1] == "*":
                diff_cmd = "diff -r " + part[0] + " " + "./root" + part[0] + " > /tmp/diff"
            else:
                diff_cmd = "diff " + part[0] + " " + "./root" + part[0] + " > /tmp/diff"
            if part[1][0] == "-rf": # Folder
                path = part[0]
            elif part[1][0] == "-f": # File
                path = part[0].replace(part[0].split("/")[-1], "")
            os.system("echo 'empty' > /tmp/diff")
            if not os.path.exists(path):
                cmd += "mkdir -p " + path + "\n"
                diff_cmd = "echo 'not exists' > /tmp/diff"
            with open("/tmp/diff", "r") as d_r:
                diff = d_r.read()
            if diff != "empty\n":
                cmd += "cp " + part[1][0] + " ./root" + part[0]+ part[1][1] + " " + part[0] + "\n"
                print("[cp]", part[0])
        if cmd != "":
            passwd = getpass.getpass("[sudo] Password: ")
            os.system("echo '" + cmd + "' > /tmp/root_copy")
            cmd = "echo -e '" + passwd + "' | sudo -kS bash /tmp/root_copy"
            os.system(cmd)
            print("\n[sudo] Password has been filled in.")
            os.system("rm -f /tmp/root_copy")
        os.system("rm -f /tmp/diff")

def remove_custom():
    for path in custom:
        if path == "":
            break
        if path[-1] == "/": # Folder
            cmd = "rm -rf "
            output = "Custom Folder: " + path
        else: # File
            cmd = "rm -f "
            output = "Custom File: " + path
        if path[0] == "/": # In /
            print("[/]", output)
            path = "./root" + path
        else:
            print("[~]", output)
            path = "./" + path
        os.system(cmd + path)

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
    print("-" * 30 + " Files List " + "-" * 30)
    home, root = parts_list()
    print("-" * 30 + " Sync Files " + "-" * 30)
    copy_files(home, root, option)
    print("-" * 29 + " Custom Files " + "-" * 29)
    remove_custom()
    print("-" * 31 + " Git Push " + "-" * 31)
    os.system("git init && git add . && git commit -m 'Update' && git push")
    print("-" * 33 + " Done " + "-" * 33)
elif option == "pull" or option == "Pull":
    option = 1
    print("-" * 31 + " Git Pull " + "-" * 31)
    os.system("git pull")
    print("-" * 30 + " Files List " + "-" * 30)
    home, root = parts_list()
    print("-" * 29 + " Custom Files " + "-" * 29)
    remove_custom()
    print("-" * 30 + " Sync Files " + "-" * 30)
    copy_files(home, root, option)
    print("-" * 33 + " Done " + "-" * 33)
else:
    print("Invalid Option.")
    sys.exit()
