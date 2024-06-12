#!/bin/bash
# Rename the default writing assignment file
#
# Inputs [1]
# 	the name of the new file only, no .tex necessary!
#
# Last edit 06-12-24
oldname=writing-assignment.tex
newname=$1.tex

if [ -e $oldname ]
then
        mv $oldname $newname
        echo File renamed successfully.

        # Clean the current directory
        rm rename-windows.bat
        rm -- "$0"
else
        echo The file does not exist.
fi
