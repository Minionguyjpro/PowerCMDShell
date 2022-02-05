![PowerCMDShell](https://user-images.githubusercontent.com/66115754/152556275-e70b5949-599e-414c-8e7f-1d353b661613.png)
# PowerCMDShell
Get Windows PowerShell in the Windows Command Prompt (CMD).
This was made using a simple script, and then compiled into a lite EXE.
This was the Batch script:
```batch
@echo off
if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  title Starting PowerShell x64...
  echo Starting PowerShell x64...
  title PowerCMDShell 
  %windir%\System32\WindowsPowerShell\v1.0\powershell.exe
) else (
  title Starting PowerShell x86...
  echo Starting PowerShell x86...
  title PowerCMDShell 32-bit
  %windir%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe
)
```
That's it! Very simple and lovely made by me.

**NOTE**: There is an advanced version for user which want better experience and choice. It has this code:
```batch
@echo off
:input
title Start or exit PowerCMDShell?
set /p OPTION=Do you want to exit or start PowerCMDShell? 
if /I "%OPTION%"=="exit" goto exit
if /I "%OPTION%"=="start" goto inputver
:exit
exit
:inputver
title Choose your PowerShell version
set /p PWSHVER=PowerShell version: 
if /I "%PWSHVER%"=="default" goto default 
if /I "%PWSHVER%"=="7" goto pwsh7
if /I "%PWSHVER%"=="back" goto input

:pwsh7
if exist %programfiles%\PowerShell\7\pwsh.exe (
  title Starting PowerShell 7 x64...
  echo Starting PowerShell 7 x64...
  title PowerCMDShell 7
  "%programfiles%\PowerShell\7\pwsh.exe"
  goto input
) else (
  title Starting PowerShell 7 x86...
  echo Starting PowerShell 7 x86...
  title PowerCMDShell 7 32-bit
  "%programfiles(x86)%\PowerShell\7\pwsh.exe"
  goto input
)
:default
if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  title Starting PowerShell x64...
  echo Starting PowerShell x64...
  title PowerCMDShell
  %windir%\System32\WindowsPowerShell\v1.0\powershell.exe
  goto input
) else (
  title Starting PowerShell x86...
  echo Starting PowerShell x86...
  title PowerCMDShell 32-bit
  %windir%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe
  goto input
)
```
