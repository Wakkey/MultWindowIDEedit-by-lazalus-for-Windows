@echo off
SET THEFILE=fmemo3.exe
echo Linking %THEFILE%
c:\lazarus\fpc\2.4.2\bin\i386-win32\ld.exe -b pe-i386 -m i386pe  --gc-sections   --subsystem windows --entry=_WinMainCRTStartup    -o fmemo3.exe link.res
if errorlevel 1 goto linkend
c:\lazarus\fpc\2.4.2\bin\i386-win32\postw32.exe --subsystem gui --input fmemo3.exe --stack 16777216
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
