import subprocess
from sys import argv
import sys

f =int(sys.argv[2])
l =int(sys.argv[3])
IPs = []
for host in range(f, l+1):
    IP = "{}.{}".format(argv[1], host)

    process = subprocess.run('ping -c 1 -w 1 '+ IP,stdout=subprocess.PIPE, shell=True)

    if process.returncode == 0:
        IPs.append(IP)
        print(f"{IP}")

