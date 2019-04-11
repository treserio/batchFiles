@echo off
setlocal
icacls FolderSetup.exe /deny "HOLDENMCKENNA\Limited Case Access":F
cd..
:PROMPT
SET /P AREYOUSURE=Configure permissions for "%CD%" (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
echo Setting Permissions, please wait.
icacls * /grant:r "HOLDENMCKENNA\Limited Case Access":(OI)(CI)(IO)M && icacls * /grant:r "HOLDENMCKENNA\Limited Case Access":(NP)W
echo.
echo Permissions for "%CD%" have been set.
pause
:END
endlocal