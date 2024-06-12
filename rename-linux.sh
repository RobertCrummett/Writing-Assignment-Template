# Rename the default writing assignment file
#
# Inputs [1]
# 	the name of the new file only, no .tex necessary!
#
# Last edit 06-12-24
oldname=writing-assignment.tex;
newname=writing-assignment.tex;
if [ -e oldname ]; then
mv oldname newname
echo File renamed successfully.
else
echo The file does not exist.
fi
return
