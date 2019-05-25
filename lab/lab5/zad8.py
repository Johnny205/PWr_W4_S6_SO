import os, sys

for filename in os.listdir(sys.argv[1]): 
    dst =filename + ".copy"
    src =sys.argv[1] + filename 
    dst =sys.argv[1] + dst 
    os.rename(src, dst) toy