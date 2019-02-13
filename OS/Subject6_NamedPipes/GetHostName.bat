Rem Script for getting IP-address a host-maschine
echo %USERPROFILE%
pause
ipconfig /all > "%USERPROFILE%\hostname.txt"
pause
notepad "%USERPROFILE%\hostname.txt"
pause
