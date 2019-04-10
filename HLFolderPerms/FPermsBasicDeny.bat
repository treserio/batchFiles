icacls FolderSetup.exe /deny "HOLDENMCKENNA\Limited Case Access":F
cd..
icacls * /grant:r "HOLDENMCKENNA\Limited Case Access":(OI)(CI)(IO)M && icacls * /grant:r "HOLDENMCKENNA\Limited Case Access":(NP)W