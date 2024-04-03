REM This script resizes all the png images in one folder and saves them in a new folder called Resized
REM ==================================================================================================
if not exist "Resized" mkdir "Resized"
for %%a in ("*.png") do ffmpeg -i "%%a" -vf scale="2048:1024" "Resized\%%a"
pause