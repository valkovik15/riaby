echo on
Rem Extracting all files from the archive "archive.zip" having been in the current directory
Rem into the current directtory!
Rem 7z e archive.zip

Rem The source directory is the current directory
Rem Extracting all files from the archive "WSpUnnamedPipes.zip" to the "D:\Riaby\OSCurr2008\Subject2_Processes\Work" directory.
Rem -aoa this option makes Overwrite all existing files without prompt. 

set envArchive=
set envArchive=WSpUnnamedPipes.zip
set envDirPath=
set envDirPath=D:\Riaby\OSCurr2008\Subject2_Processes\Work

"C:\Program Files\7-Zip\7z" e %envArchive% -aoa -o%envDirPath% 

if errorlevel 0 goto END
PAUSE
echo Error: 7z FAILED
:END
echo "errorlevel" is "%errorlevel%"  
PAUSE
exit