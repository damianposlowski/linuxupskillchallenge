#!/bin/bash
#
#   Loop over files on your desktop 
#   
FILES="/home/damian/Desktop/"
for f in $FILES
    do
        ls -sh $f
    done