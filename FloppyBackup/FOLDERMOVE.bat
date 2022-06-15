@ECHO OFF

CLS
ECHO +===============================================+
ECHO .FOLDERMOVE - You need to move folders!         .
ECHO +===============================================+
@ECHO OFF

SET /P des="Nombre de la carpeta destino: "
CD [Directory for main folder]
MD %des%
REM ECHO %des%

ROBOCOPY E:\FLOPPYBA [Directory for main folder]\%des% /E /MOVE

ECHO Carpetas movidas exitosamente!
PAUSE

REM Crear carpetas
CD /d E:\
MD FLOPPYBA
CD E:\FLOPPYBA\
MD 0 1 2 3 4 5 6 7 8 9
ECHO Creacion de carpetas completada!
PAUSE

REM To be used with NoPALX. Made for Windows10
