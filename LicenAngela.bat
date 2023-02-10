cls
@ECHO OFF
title Folder #REPORTE-BIOMETRICO-ANGELA 
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST #REPORTE-BIOMETRICO-ANGELA  goto MDLOCKER
:CONFIRM
echo Quiere ocultar la Documentacion de la Licen ANGELA? (S/N)
set/p "cho="
if %cho%==S goto LOCK
if %cho%==s goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren #REPORTE-BIOMETRICO-ANGELA  "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Introduzca la contrasena para mostrar la documentacion de ANGELA AGUILERA
set/p "pass="
if NOT %pass%== Password goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" #REPORTE-BIOMETRICO-ANGELA 
echo Folder Unlocked successfully
goto End
AIL
echo Invalid password
goto end
:MDLOCKER
md #REPORTE-BIOMETRICO-ANGELA 
echo #REPORTE-BIOMETRICO-ANGELA  created successfully
goto End
:End
