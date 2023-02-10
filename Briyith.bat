cls
@ECHO OFF
title Folder #REPORTE-BIOMETRICO-BRIYITH
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST #REPORTE-BIOMETRICO-BRIYITH goto MDLOCKER
:CONFIRM
echo Quiere ocultar la Documentacion de BRIYITH? (S/N)
set/p "cho="
if %cho%==S goto LOCK
if %cho%==s goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren #REPORTE-BIOMETRICO-BRIYITH "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Introduzca la contrasena para mostrar la documentacion del Biometrico para Briyith
set/p "pass="
if NOT %pass%== Password goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" #REPORTE-BIOMETRICO-BRIYITH
echo Folder Unlocked successfully
goto End
AIL
echo Invalid password
goto end
:MDLOCKER
md #REPORTE-BIOMETRICO-BRIYITH
echo #REPORTE-BIOMETRICO-BRIYITH created successfully
goto End
:End
