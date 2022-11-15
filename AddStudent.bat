@ECHO OFF
ECHO ================================================================
ECHO Adds a student account to a Google Classroom specified by ID
ECHO ================================================================

SET /P googleclass= What Classrom ID:
SET /P Student= What Student:

gam course %googleclass% add students %Student%

PAUSE
