@ECHO OFF

ECHO ================================================================
ECHO Deletes all Google Classrooms identified by Alias in c:\Classroom\ToDelete\x.csv
ECHO ================================================================

gam csv c:\Classroom\ToDelete\x.csv gam delete course ~ALIAS

ECHO I Hope that was right

PAUSE
