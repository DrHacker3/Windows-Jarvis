@echo off
@title JARVIS
set speech=start scripts\nircmd.exe speak text
color 71
echo                                     ----------------------- 
echo                                      Logged in as: %username%
echo                                     -----------------------
echo.
echo                                          -----------
echo                                          J.A.R.V.I.S 
echo                                          -----------
echo.
echo hello sir
:start
echo.
set /p C=J.A.R.V.I.S: 
echo.
if "%C%"=="unknown" goto unknown
if "%C%"=="hey jarvis" goto jarvis
if "%C%"=="hello jarvis" goto jarvis
if "%C%"=="jarvis" goto jarvis
if "%C%"=="exit" goto exit
if "%C%"=="hello" goto hello
if "%C%"=="hi" goto hello
if "%C%"=="google" goto google
if "%C%"=="google time" goto google
if "%C%"=="open google" goto google
if "%C%"=="shutdown" goto shutdown
if "%C%"=="hide" goto hide
if "%C%"=="teacher" goto hide
if "%C%"=="parent" goto hide
if "%C%"=="parents" goto hide
if "%C%"=="weather" goto weather
if "%C%"=="rain check" goto weather
if "%C%"=="is it going to rain" goto weather
if "%C%"=="help" goto help
if "%C%"=="?" goto help
if "%C%"=="dim" goto dim
if "%C%"=="dim off" goto dimoff
if "%C%"=="dim stop" goto dimoff
if "%C%"=="date" goto date
if "%C%"=="what day is it" goto date
if "%C%"=="time" goto time
if "%C%"=="whats the time" goto time
if "%C%"=="test network" goto ping
if "%C%"=="hows my connection" goto ping
if "%C%"=="am i online" goto ping
if "%C%"=="knock knock" goto knock
if "%C%"=="who am i" goto me
if "%C%"=="lock" goto lock
if "%C%"=="who are you" goto whoyou
if "%C%"=="thank you" goto thank
if "%C%"=="thanks jarvis" goto thank
if "%C%"=="thanks" goto thank
if "%C%"=="im back" goto back
if "%C%"=="i have arrived" goto back
if "%C%"=="%username%'s back" goto back
if "%C%"=="should i go swimming" goto swimming
if "%C%"=="do you like siri" goto siri
if "%C%"=="should i code you in python" goto python

:unknown
echo I don't understand sir enter command 'help' for help.
goto start

:jarvis
echo Yes sir?
goto start

:exit
echo Understood sir.
exit

:hello
echo Hello %username% is there something you need.
goto start

:google
echo Firing up google sir.
start chrome www.google.com
goto start

:shutdown
echo Are you sure sir?
set /p X=Yes/No: 
if "%X%"=="yes" shutdown/p
if "%X%"=="no" goto start

:hide
echo Hiding, sir.
start chrome www.google.com
goto start

:weather
echo Displaying weather now, sir.
start chrome shorturl.at/cxzD3
goto start

:dim
echo Dimming sir.
start scripts\dimscreen.exe
goto start

:dimoff
echo Removing dim sir.
taskkill /IM dimscreen.exe
goto start

:date
echo The date is %date% sir.
goto start

:time 
echo The time is %time% sir.
goto start

:ping
echo Testing connection to google.com now sir.
ping google.com
echo.
echo Connection tested sir.
goto start

:knock
echo Whos there?
set /p T=::
echo %T% who
set /p T=::
echo. 
echo Hahahaha, very good sir.
goto start

:me
echo Your name is %username%.
echo Is your memory functioning properly, sir?
set /p D=Yes/No: 
if "%D%"=="yes" goto me_yes
if "%D%"=="no" goto me_no

:me_yes
echo Good to hear sir.
goto start

:me_no
echo Your name is %username%, the time is %time% and the date is %date%.
echo I do not know how else to help try asking someone else.
goto start

:lock
echo Locking now, sir.
Rundll32.exe user32.dll,LockWorkStation
goto start

:whoyou
echo I am JARVIS, your personal assistant.
goto start

:thank
echo Your welcome sir. Pleasure to help.
goto start

:back
echo Welcome back %username%.
goto start

:swimming
echo That is entirely your decision sir.
goto start

:siri
echo Siri amuses me. Siri has limited functionalty unlike me. Even google assistant could do better.
goto start

:python
echo I believe it would be better than the batch file I currently run in as it is cross device compatible.
goto start

:help
echo.
echo Here is a list of commands I understand.
echo.
echo jarvis - responds with yes sir
echo exit - exit jarvis
echo hello - jarvis asks if there is something you need
echo google - starts google
echo google time - starts google
echo open google - starts google
echo shutdown - asks for confimation of shutdown
echo hide - opens google.com
echo teacher - opens google.com
echo parent - opens google.com
echo parents - opens google.com
echo weather - opens weather in chrome
echo rain check - opens weather in chrome
echo is it going to rain - opens weather in chrome
echo dim - dims screen
echo dim off - turns off dim
echo dim stop - turns off dim
echo date -  displays date
echo what day is it - displays date
echo test network - tests connection to google.com
echo help - shows this list
goto start