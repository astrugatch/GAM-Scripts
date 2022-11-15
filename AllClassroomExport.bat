@ECHO OFF

ECHO ================================================================
ECHO This script exports all currently ACTIVE or PROVISIONED Classrooms 
ECHO Exports them to a dated file in c:\Classroom\ExportsofClassroom
ECHO ================================================================

SET ClassExport=ClassroomExport_%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

gam print courses state active,provisioned owneremail > c:\Classroom\ExportsofClassroom\%ClassExport%.csv

PAUSE
