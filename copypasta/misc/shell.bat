@echo off

REM
REM  To run this at startup, use this as your shortcut target:
REM  %windir%\system32\cmd.exe /k w:\handmade\misc\shell.bat
REM

call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
set path=c:\users\thart\dev\CopyPasta;%path%
doskey gitlogd=git log --pretty=oneline
doskey vi=nvim
REM start /B "" c:\remedybg\remedybg.exe c:\users\thart\dev\CopyPasta\build\win32_copypasta.exe
