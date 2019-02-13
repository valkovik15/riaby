echo off
echo %CD%
set dirWSpace=
set dirWSpace=D:\Riaby\OSCurr2008\Subject2_Processes\WSpUnnamedPipes
set dirWSpace
pause
echo on
cd /d %USERPROFILE%
pause
rem cd /d %dirWSpace%
rem cd d:
pause
rem Remove 
for /R %dirWSpace% %%x in (*.dsp *.dsw *.opt) do del %%x 
pause
for /R %dirWSpace% %%x in (debug) do rmdir /s /q %%x
pause
del WSpaceReport.txt
date /t >> WSpaceReport.txt
time /t >> WSpaceReport.txt
for /R %dirWSpace% %%x in (*) do (echo %%x >> WSpaceReport.txt)
pause
notepad WSpaceReport.txt
exit