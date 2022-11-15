@ECHO OFF

ECHO ================================================================
ECHO This script kicks off the GoogleClassroom sync and saves it's output to a log
ECHO ================================================================

SET LogFileName=gamClassroomSync_%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

c:\Classroom\Scripts\classroomsync.bat 1> c:\Classroom\Logs\%LogFileName%.log 2>&1
