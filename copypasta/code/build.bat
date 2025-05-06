@echo off

set CommonCompilerFlags=-MT -nologo -Gm- -GR- -EHa- -Od -Oi -WX -W4 -wd4201 -wd4100 -wd4189 -DCOPYPASTA_INTERNAL=1 -DCOPYPASTA_SLOW=1 -DCOPYPASTA_WIN32=1 -FC -Z7
set CommonLinkerFlags= -incremental:no -opt:ref user32.lib 

REM TODO - can we just build both with one exe?

IF NOT EXIST ..\..\build mkdir ..\..\build
pushd ..\..\build

REM 32-bit build
REM cl %CommonCompilerFlags% ..\handmade\code\win32_handmade.cpp /link -subsystem:windows,5.1 %CommonLinkerFlags%

REM 64-bit build
REM del *.pdb > NUL 2> NUL
cl %CommonCompilerFlags% ..\copypasta\code\win32_copypasta.cpp /link %CommonLinkerFlags%
popd
