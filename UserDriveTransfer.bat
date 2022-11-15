@ECHO OFF
ECHO ================================================================
ECHO Collects orphaned files then transfers Contents of Drive from Source User to Destination User
ECHO ================================================================

SET /P sourceuser= Source User:
ECHO ================================================================
SET /P destuser= Destination User:

gam user %sourceuser% collect orphans targetuserfoldername "Orphaned %sourceuser%" useshortcuts true

gam create datatransfer %sourceuser% gdrive %destuser%

PAUSE
