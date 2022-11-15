@ECHO OFF

ECHO ================================================================
ECHO Changes ownership of a Google Classroom. 
ECHO User must already be added as a teacher in that classroom
ECHO ================================================================

SET /P googleclass= What Classrom ID:
SET /P teacher= What Teacher:

gam update course %googleclass% owner %teacher%

PAUSE
