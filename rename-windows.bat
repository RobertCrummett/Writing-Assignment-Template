REM Rename the default writing assignment file
REM
REM Inputs [1]
REM 	the name of the new file only, not .tex necessary!
REM
REM Last edit 06-12-24
@echo off
set oldname=writing-assignment.tex
set newname=%1.tex

if exist %oldname% (
	ren %oldname% %newname%
	echo File renamed successfully.
	
        del rename-linux.sh
       	REM This command will delete the current .bat file
	REM A clean up procedure	
	(goto) 2>nul & del "%~f0"
) else (
	echo The file does not exist.
)
