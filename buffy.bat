@shift /0
@echo off 
timeout /t 2 > nul

:A
cls
Setlocal EnableDelayedExpansion
set _RNDLength=26
set _Alphanumeric=ABCDEFGHIJKL1MNO3PQRSTUVWXYZ0123456789
set _Str=%_Alphanumeric%987654321

:_LenLoop
if not "%_Str:~18%"=="" set _Str=%_Str:~9%& set /A _Len+=9& goto :_LenLoop
set _tmp=%_Str:~9,1%
set /A _Len=_Len+_tmp
set _count=0
set _RndAlphaNum=

:_loop
set /a _count+=1
set _RND=%Random%
set /A _RND=_RND%%%_Len%
set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
if !_count! lss %_RNDLength% goto _loop

@ECHO OFF
color 8F
Title Buffys Perm Spoofer
Echo  Hello %USERNAME%
Echo Press any key to begin 



Pause>Nul

cd C:\Test

AMIDEWINx64.EXE /SU AUTO
AMIDEWINx64.EXE /BS !_RndAlphaNum!
AMIDEWINx64.EXE /CS !_RndAlphaNum!
AMIDEWINx64.EXE /SS !_RndAlphaNum!
AMIDEWINx64.EXE /SM "System manufacturer"
AMIDEWINx64.EXE /SP "System Product Name"
AMIDEWINx64.EXE /SV "System Version"
AMIDEWINx64.EXE /SK "SKU"
AMIDEWINx64.EXE /SF "To be filled by O.E.M."
AMIDEWINx64.EXE /BT "Default string"
AMIDEWINx64.EXE /BLC "Default string"
AMIDEWINx64.EXE /CM "Default string"
AMIDEWINx64.EXE /CV "Default string"
AMIDEWINx64.EXE /CA "Default string"
AMIDEWINx64.EXE /CSK "Default string"
AMIDEWINx64.EXE /PSN !_RndAlphaNum!


net stop winmgmt /y

net start winmgmt /y

sc stop winmgmt

sc start winmgmt

@ECHO OFF
echo Perm Spoof complete you may close this at any time
pause