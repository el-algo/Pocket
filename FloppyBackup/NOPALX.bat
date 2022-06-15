@ECHO OFF

CLS
ECHO.
ECHO +================================================+
ECHO .NoPALX - Floppy Backup Tool - V3.0              .
ECHO +================================================+
@ECHO OFF
SET pan=10
SET fold=0
SET EX=

CD C:\
CD C:\FLOPPYBA
GOTO start

:start
ECHO Carpeta destino:

CHOICE /C:0123456789 /S
IF ERRORLEVEL ==0 SET fold=-1
IF ERRORLEVEL ==1 SET fold=0
IF ERRORLEVEL ==2 SET fold=1
IF ERRORLEVEL ==3 SET fold=2
IF ERRORLEVEL ==4 SET fold=3
IF ERRORLEVEL ==5 SET fold=4
IF ERRORLEVEL ==6 SET fold=5
IF ERRORLEVEL ==7 SET fold=6
IF ERRORLEVEL ==8 SET fold=7
IF ERRORLEVEL ==9 SET fold=8
IF ERRORLEVEL ==10 SET fold=9

REM Last error prevents copy to folder 8 if user selects 9. Bug present in FreeDOS 1.3

GOTO copier

:copier
xcopy A:\*.* C:\FLOPPYBA\%fold% /S /E /H /-Y

echo Respaldo completado :)
ECHO 
ECHO Ultima carpeta #%fold%
GOTO START

REM Needs folder "FLOPPYBA" in root. To be used with "FolderMove". Made for FreeDOS 1.3
