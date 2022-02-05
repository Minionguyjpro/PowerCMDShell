@echo off
:input
set /p OPTION=Do you want to exit or start PowerCMD? 
if /I "%OPTION%"=="exit" goto exit
if /I "%OPTION%"=="start" goto inputver
:exit
exit
:inputver
set /p PWSHVER=PowerShell version:
if /I "%PWSHVER%"=="default" goto default 
if /I "%PWSHVER%"=="7" goto pwsh7
if /I "%PWSHVER%"==

:pwsh7
if exist %programfiles%\PowerShell\7\pwsh.exe (
  title Starting PowerShell 7 x64...
  echo Starting PowerShell 7 x64...
  title PowerShell 7 x64 In CMD
  "%programfiles%\PowerShell\7\pwsh.exe"
  goto input
) else (
  title Starting PowerShell 7 x86...
  echo Starting PowerShell 7 x86...
  title PowerShell 7 x86 In CMD
  "%programfiles(x86)%\PowerShell\7\pwsh.exe"
  goto input
)
:default
if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  title Starting PowerShell x64...
  echo Starting PowerShell x64...
  title PowerShell x64 In CMD
  %windir%\System32\WindowsPowerShell\v1.0\powershell.exe
  goto input
) else (
  title Starting PowerShell x86...
  echo Starting PowerShell x86...
  title PowerShell x86 In CMD
  %windir%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe
  goto input
)
