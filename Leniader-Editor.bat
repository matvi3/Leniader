@echo off
title Loading Leniader

echo Loading
ping localhost -n 1.5 >nul
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 1.5 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 1.5 >nul
cls
echo Loading.....
ping localhost -n 2 >nul
cls
echo Complete
ping localhost -n 3 >nul
cls

title Leniader Authentication

:passpromt
set /p protection= Enter Password:
if %protection% == password goto Correct
if not %protection% == password goto Incorrect
:Correct
:: Password is password
echo Access Granted!
ping localhost -n 3 >nul
cd "\Leniader\Applications\
del "WebBrowserPassView.cfg"
del "WirelessKeyView.cfg"
del "ProduKey.cfg"
del "WNetWatcher.cfg"
del "BrowsingHistoryView.cfg"
cd "\Leniader\
goto Data
cls
:Data
if EXIST "Data1" goto UNLOCK 
if NOT EXIST Data goto MDLOCKER 
:UNLOCK
attrib -h -s "Data1" 
ren "Data1" Data
goto main
:MDLOCKER
md Data
goto main  
:main
cls
title Leniader
echo Welcome To Leniader!
echo.
echo You can open multiple programs by entering the numbers in one word in order
echo For Example 12345 or 13, not 134 or 231
echo.
echo Press 1 To View Product Keys
echo Press 2 To View Browser Passwords
echo Press 3 To View Browser History
echo Press 4 To View Wireless Passwords
echo Press 5 To View Other Devices On The Network
echo Press 6 To Run All
echo Press 7 To Do Nothing
echo Press 8 To View Collected Data
echo Press 9 To Exit
echo Type Help or Info for Help/Info
echo Type Update to Update Leniader
echo.
set /p car=
if %car% == 1 start \Leniader\Applications\ProduKey.exe
if %car% == 2 start \Leniader\Applications\WebBrowserPassView.exe
if %car% == 3 start \Leniader\Applications\BrowsingHistoryView.exe
if %car% == 4 start \Leniader\Applications\WirelessKeyView.exe
if %car% == 5 start \Leniader\Applications\WNetWatcher.exe
if %car% == 12 start \Leniader\Applications\ProduKey.exe
if %car% == 12 start \Leniader\Applications\WebBroserPassView.exe
if %car% == 123 start \Leniader\Applications\ProduKey.exe
if %car% == 123 start \Leniader\Applications\WebBroswerPassView.exe
if %car% == 123 start \Leniader\Applications\BrowsingHistoryView.exe
if %car% == 1234 start \Leniader\Applications\ProduKey.exe
if %car% == 1234 start \Leniader\Applications\WebBroswerPassView.exe
if %car% == 1234 start \Leniader\Applications\BrowsingHistoryView.exe
if %car% == 1234 start \Leniader\Applications\WirelessKeyView.exe
if %car% == 12345 start \Leniader\Applications\ProduKey.exe
if %car% == 12345 start \Leniader\Applications\WebBrowserPassView.exe
if %car% == 12345 start \Leniader\Applications\BrowsingHistoryView.exe
if %car% == 12345 start \Leniader\Applications\WirelessKeyView.exe
if %car% == 12345 start \Leniader\Applications\WNetWatcher.exe
if %car% == 6 start \Leniader\Applications\ProduKey.exe
if %car% == 3.14159 echo I'm A Gummy Bear
if %car% == 3.14159-Ukrainian echo Я клейкий ведмідь
if %car% == 3.14159-Swedish echo Jag är en klibbig björn
if %car% == 3.14159-French echo Je suis un ours gommeux
if %car% == 3.14159-Esparanto echo Mi A Gummy Bear
if %car% == 3.14159-Korean echo 나는 거미 베어 야.
if %car% == 6 start \Leniader\Applications\WebBrowserPassView.exe
if %car% == 6 start \Leniader\Applications\BrowsingHistoryView.exe
if %car% == 6 start \Leniader\Applications\WirelessKeyView.exe
if %car% == 6 start \Leniader\Applications\WNetWatcher.exe
if %car% == 13 start \Leniader\Applications\ProduKey.exe
if %car% == 13 start \Leniader\Applications\BrowsingHistoryView.exe
if %car% == 14 start \Leniader\Applications\Produkey.exe
if %car% == 14 start \Leniader\Applications\WirelessKeyView.exe
if %car% == 15 start \Leniader\Applications\ProduKey.exe
if %car% == 15 start \Leniader\Applications\WNetWatcher.exe
if %car% == 9 goto Exit-Ticket
if %car% == exit goto Exit-Ticket
if %car% == 8 start \Leniader\Data\
if %car% == all start \Leniader\Applications\ProduKey.exe
if %car% == all start \Leniader\Applications\WebBrowserPassView.exe
if %car% == all start \Leniader\Applications\BrowsingHistoryView.exe
if %car% == all start \Leniader\Applications\WirelessKeyView.exe
if %car% == all start \Leniader\Applications\WNetWatcher.exe
if %car% == data start \Leniader\Data\
if %car% == help start http://binbox.io/UvAyn#v6V1MxL9
if %car% == info start http://binbox.io/UvAyn#v6V1MxL9
if %car% == update start https://github.com/matvi3/Leniader/upload/master
if %car% == upgrade start https://github.com/matvi3/Leniader/upload/master
echo.
echo Copyright 2016 Topik Corporation
pause
goto :main

:Exit-Ticket
title Close Leniader
:choice
set /P c=Are you sure you want to close Leniader[Y/N]?
if /I "%c%" EQU "Y" goto Exitor
if /I "%c%" EQU "N" goto main
goto main

:Exitor
title Closing Leniader
taskkill /im ProduKey.exe
taskkill /im WNetWatcher.exe
taskkill /im BrowsingHistoryView.exe
taskkill /im WirelessKeyView.exe
taskkill /im WebBrowserPassView.exe
ren Data "Data1" 
attrib +h +s "Data1"
exit
goto CFG-Ticket

:CFG-Ticket
cd "\Leniader\Applications\"
del "WebBrowserPassView.cfg"
del "WirelessKeyView.cfg"
del "ProduKey.cfg"
del "WNetWatcher.cfg"
del "BrowsingHistoryView.cfg"
exit

:PasswordSetter
Set input=
set /p input= Password
if %input%== 

:Incorrect
echo Access Denied
goto :passpromt
exit