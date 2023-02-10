cls
@ECHO OFF
title Folder #REPORTE-BIOMETRICO
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST #REPORTE-BIOMETRICO goto MDLOCKER
:CONFIRM
echo Quiere ocultar la Documentacion de ELIDA VACA? (S/N)
set/p "cho="
if %cho%==S goto LOCK
if %cho%==s goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren #REPORTE-BIOMETRICO "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Introduzca la contrasena para mostrar la documentacion del Biometrico para Elida Vaca
set/p "pass="
if NOT %pass%== Password goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" #REPORTE-BIOMETRICO
echo Folder Unlocked successfully
goto End
AIL
echo Invalid password
goto end
:MDLOCKER
md #REPORTE-BIOMETRICO
echo #REPORTE-BIOMETRICO created successfully
goto End
:End
