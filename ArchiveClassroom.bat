@ECHO OFF

ECHO ================================================================
ECHO Archives a Google Classroom Specified by ID
ECHO ================================================================

SET /P googleclass= What Classroom ID:

gam update course %googleclass% status ARCHIVED

PAUSE
