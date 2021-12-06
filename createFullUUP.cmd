@echo off
set /p "folder=Enter full folder location where are UUP files: "
cd /d "%folder%"
move *.cab .
move UUP\Desktop\Apps\*.* .
move UUP\Desktop\editionPackages\neutral\*.* .
set /p "langcode=Enter language code that you downloaded: "
move UUP\Desktop\editionPackages\%langcode%\Client\*.* .
move MetadataESD\*.* .
move FeaturesOnDemand\neutral\cabs\*.* .
move FeaturesOnDemand\neutral\esds\*.* .
del *.uupmcreplay
rd FeaturesOnDemand\neutral\cabs
rd FeaturesOnDemand\neutral\esds
rd FeaturesOnDemand\neutral
rd FeaturesOnDemand
rd MetadataESD
rd UUP\Desktop\Apps\
rd UUP\Desktop\editionPackages\neutral
rd UUP\Desktop\editionPackages\%langcode%\Client
rd UUP\Desktop\editionPackages\%langcode%
rd UUP\Desktop\editionPackages
rd UUP\Desktop
rd UUP
echo Set created.
pause
exit
