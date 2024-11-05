@echo off
REM  These codes are licensed under CC0.
REM  http://creativecommons.org/publicdomain/zero/1.0/deed.ja

cd /d %~dp1

for %%q in (%*) do (
echo TARGET FILE : %%~nxq
REM *** PNG FILE ***
if %%~xq == .png (
	call :OPTIMIZE_PNG "%%~nxq"
)
if %%~xq == .PNG (
	call :OPTIMIZE_PNG "%%~nxq"
)
REM *** JPEG FILE ***
if %%~xq == .jpg (
	call :OPTIMIZE_JPG "%%~nxq"
)
if %%~xq == .JPG (
	call :OPTIMIZE_JPG "%%~nxq"
)
echo.
)
PAUSE
exit /b

REM *** SUBROUTINE ***

:OPTIMIZE_PNG
pngquant.exe --force --verbose --floyd=1 --speed=1 --output quantized_%1 --quality=60-70 %1
zopflipng.exe --lossy_transparent --lossy_8bit --iterations=20 --filters=0me quantized_%1 optimized_%1
del /F quantized_%1
exit /b

:OPTIMIZE_JPG
setlocal
set ORIENTATION=0
for /f "usebackq tokens=*" %%i in (`identify -format "%%[EXIF:Orientation]" %1`) do set ORIENTATION=%%i
if %ORIENTATION% == 6 (
	convert -strip %1 tmp_%1
	convert tmp_%1 -rotate +90 strip_%1
) else (
	convert -strip %1 strip_%1
)
endlocal
cjpeg-static.exe -quality 70 -outfile optimized_%1 strip_%1
if exist tmp_%1 ( del /F tmp_%1 )
del /F strip_%1
exit /b