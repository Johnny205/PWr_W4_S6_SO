import os, sys

os.mkdir('catalog')
os.chdir('catalog')
for i in range(100):
    open("plik" + str(i+1),"w+") 