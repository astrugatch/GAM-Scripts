@ECHO OFF

SET /P googleclass= What Classroom ID:

gam update course %googleclass% status ACTIVE

PAUSE
