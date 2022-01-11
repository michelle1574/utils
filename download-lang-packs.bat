@echo off
cd /d "%~dp0"
echo Language Pack Downloader
set /p "langid=Update ID: "
echo If you want more than one languages, type for example: en-us,pl-pl,hu-hu
set /p "langs=Languages IDs: "
aria2c -o aria2_script.txt "https://uup.rg-adguard.net/api/GetFiles?id=%langid%&lang=%langs%&edition=lang&txt=1"
aria2c -i aria2_script.txt -d Langs
echo Languages downloaded.
pause
exit
