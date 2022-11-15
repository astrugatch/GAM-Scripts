@ECHO OFF
ECHO ================================================================
ECHO Activates a Google Classroom specified by ID
ECHO ================================================================
SET /P googleclass= What Classroom ID:

gam update course %googleclass% status ACTIVE

PAUSE
