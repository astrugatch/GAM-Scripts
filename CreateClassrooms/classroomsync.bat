REM This script adds classes found in the CreateClasses file and syncs users to those classes from the CourseStudents file
REM IF EXIST "C:\SPF_SFTP\gclasssftp\CreateClasses.csv" GOTO _START

REM Exit

REM :_START
REM Move all files from SFTP directory to working directory

MOVE "C:\SPF_SFTP\gclasssftp\*.*" "C:\Classroom\Source\"

cd c:/GAMADV-XTD3/

REM Create Courses

gam csv c:\Classroom\Source\CreateClasses.csv gam create course alias ~Alias teacher ~Teacher name ~Name

REM This command will add co-teachers for courses with multiples

gam csv c:\Classroom\Source\CreateClasses.csv gam course ~Alias add teacher ~Teacher

REM SYNC with MasterList

gam courses csvkmd c:\Classroom\Source\CourseStudents.csv keyfield Alias datafield Students sync students csvdata Students

CALL "c:\Classroom\Scripts\SendResults.bat"