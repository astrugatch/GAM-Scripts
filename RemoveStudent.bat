@ECHO OFF

ECHO ================================================================
ECHO Removes student account from Google Classroom specified by ID
ECHO ================================================================

SET /P googleclass= What Classrom ID:
SET /P Student= What Student:

gam course %googleclass% remove students %Student%

PAUSE
