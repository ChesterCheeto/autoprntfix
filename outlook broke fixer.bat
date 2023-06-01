@echo off
set file_path="%appdata%\Microsoft\outlook\OutlPrnt"
set process_name="Outlook.exe"
set outlook_location=" C:\Program Files\Microsoft Office\Office15\OUTLOOK.EXE"
taskkill /im %process_name%
echo save changes or whatever, close outlook then press any key
pause
if exist %file_path% (
    echo Badboifile exists. Deleting...
    del %file_path%
    echo Badboifile eliminated.
) else (
    echo Badboifile not found something else is wrong dawg.
)
start  %outlook_location%
pause