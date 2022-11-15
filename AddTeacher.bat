@ECHO OFF
ECHO ================================================================
ECHO Adds a teacher account to a Google classroom by ID
ECHO ================================================================

SET /P googleclass= What Classrom ID:
SET /P teacher= What Teacher:

gam course %googleclass% add teacher %teacher%

PAUSE
