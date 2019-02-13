echo off
echo %CD%
set dirWSpace=
set dirWSpace=D:\Riaby\OSCurr2008\Subject2_Processes\WSpUnnamedPipes
set dirWSpace
pause

echo on
cd /d %USERPROFILE%
pause
Rem cd /d %dirWSpace%
Rem cd d:
pause

Rem Remove 

Rem for /R %dirWSpace% %%x in (*.dsp *.dsw *.opt) do del %%x 
for /R %dirWSpace% %%x in (*.dsp *.dsw *.opt) do ( echo %%x )
pause

Rem for /R %dirWSpace% %%x in (debug) do rmdir /s /q %%x
for /R %dirWSpace% %%x in (debug) do ( echo %%x )
pause

del WSpaceReport.txt
date /t >> WSpaceReport.txt
time /t >> WSpaceReport.txt
for /R %dirWSpace% %%x in (*) do (echo %%x >> WSpaceReport.txt)
pause

rem start notepad without pause
start /wait notepad WSpaceReport.txt  
rem pause


Rem Making Archive with 7Zip
Rem Current Dir is %USERPROFILE%
Rem 7z a -tzip archive.zip subdir\

cd /d %dirWSpace%
cd ..
pause
Rem Now the Current Directory is "D:\Riaby\OSCurr2008\Subject2_Processes"

set subDirWSpace=
set subDirWSpace=WSpUnnamedPipes\
set archiveWSpace=
set archiveWSpace=WSpUnnamedPipes.zip

"C:\Program Files\7-Zip\7z" a -tzip %archiveWSpace% %subDirWSpace%

if errorlevel 0 goto END
PAUSE
echo BAD_FAILURE 
 


echo Error: 7z FAILED
echo "errorlevel" is %errorlevel% 
exit

:END
echo "errorlevel" is %errorlevel%  
PAUSE

rem Copy %archiveWSpace% from the Current Directory into the Directory "%USERPROFILE%" 
copy "%archiveWSpace%" "%USERPROFILE%"

Rem Show the contents of "%USERPROFILE%"
dir "%USERPROFILE%"\*.*
pause 

Rem Delete the source "%archiveWSpace%" in the current directory
del "%archiveWSpace%"

Rem Show the changed contents of the current directory
dir
pause
exit