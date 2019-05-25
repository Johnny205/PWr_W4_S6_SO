import os
import sys

print(os.system("cd " + sys.argv[1] + "; ls -l"))