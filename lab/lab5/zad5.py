import os, sys

for root, dirs, files in os.walk(sys.argv[1]):
    path = root.split(os.sep)
    for file in files:
        print(len(path) * '---', file)