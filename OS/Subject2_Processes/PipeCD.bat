echo off
Rem "WriteEnd.exe | ReadEnd.exe"
path
pause
echo %CD%
pause
cd ..
echo %CD%
pause
set path=%CD%\WriteEnd\Debug\;%CD%\ReadEnd\Debug\;%path%
path
pause
del Output.txt
pause
rem relative to Current Directory
WriteEnd\Debug\WriteEnd.exe|ReadEnd\Debug\ReadEnd.exe>Output.txt
pause