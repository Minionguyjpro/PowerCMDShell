![PowerCMD](https://user-images.githubusercontent.com/66115754/152556275-e70b5949-599e-414c-8e7f-1d353b661613.png)
# PowerCMD
Get Windows PowerShell in the Windows Command Prompt (CMD).
This was made using a simple script, and then compiled into a lite EXE.
This was the Batch script:
```batch
@echo off
if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (
  title Starting PowerShell x64...
  echo Starting PowerShell x64...
  title PowerShell x64 In CMD
  %windir%\System32\WindowsPowerShell\v1.0\powershell.exe
) else (
  title Starting PowerShell x86...
  echo Starting PowerShell x86...
  title PowerShell x86 In CMD
  %windir%\SysWOW64\WindowsPowerShell\v1.0\powershell.exe
)
```
That's it! Very simple and lovely made by me.
