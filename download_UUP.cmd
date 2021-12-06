@echo off
set /p "sku=Enter SKU code (e.g. Professional): "
set /p "ver=Version (10.0.build.revision): "
set /p "ma=Machine type (amd64, x86 or arm64): "
set /p "ring=Flight ring (Retail, Extrenal or Internal): "
set /p "branch=Branch: "
set /p "lang=Language code: "
set /p "relt=Release type (Production or Test): "
set /p "yopt=Sync current version only (yes or no, lowercase): "
set "params=-s %sku% -v %ver% -t %ma% -r %ring% -c %branch% -l %lang% -e %sku% -z %relt%"
if yopt==yes set "params=%params% -y"
UUPDownload.exe %params%
exit