@echo off
echo This script will now prepare the files for using SharedMedia_Prismatic

if exist ..\SharedMedia_Prismatic goto has_folder
echo Creating the folders...
mkdir ..\SharedMedia_Prismatic
mkdir ..\SharedMedia_Prismatic\background
mkdir ..\SharedMedia_Prismatic\border
mkdir ..\SharedMedia_Prismatic\font
mkdir ..\SharedMedia_Prismatic\sound
mkdir ..\SharedMedia_Prismatic\statusbar
echo You can now put your media files into the subfolders found at World of Warcraft\Interface\Addons\SharedMedia_Prismatic
goto end_of_file

:has_folder
echo Creating the TOC...
echo ## Interface: 70300 > ..\SharedMedia_Prismatic\SharedMedia_Prismatic.toc
echo ## Title: SharedMedia_Prismatic >> ..\SharedMedia_Prismatic\SharedMedia_Prismatic.toc
echo ## Dependencies: SharedMedia >> ..\SharedMedia_Prismatic\SharedMedia_Prismatic.toc
echo Prismatic.lua >> ..\SharedMedia_Prismatic\SharedMedia_Prismatic.toc
echo Creating the file...
echo local LSM = LibStub("LibSharedMedia-3.0") > ..\SharedMedia_Prismatic\Prismatic.lua

echo    BACKGROUND
echo.>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----- >> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- BACKGROUND >> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----- >> ..\SharedMedia_Prismatic\Prismatic.lua
for %%F in (..\SharedMedia_Prismatic\background\*.*) do (
echo       %%~nF
echo LSM:Register("background", "%%~nF", [[Interface\Addons\SharedMedia_Prismatic\background\%%~nxF]]^) >> ..\SharedMedia_Prismatic\Prismatic.lua
)

echo    BORDER
echo.>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----- >> ..\SharedMedia_Prismatic\Prismatic.lua
echo --  BORDER >> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ---- >> ..\SharedMedia_Prismatic\Prismatic.lua
for %%F in (..\SharedMedia_Prismatic\border\*.*) do (
echo       %%~nF
echo LSM:Register("border", "%%~nF", [[Interface\Addons\SharedMedia_Prismatic\border\%%~nxF]]^) >> ..\SharedMedia_Prismatic\Prismatic.lua
)

echo    FONT
echo.>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----->> ..\SharedMedia_Prismatic\Prismatic.lua
echo --   FONT>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----->> ..\SharedMedia_Prismatic\Prismatic.lua
for %%F in (..\SharedMedia_Prismatic\font\*.ttf) do (
echo       %%~nF
echo LSM:Register("font", "%%~nF", [[Interface\Addons\SharedMedia_Prismatic\font\%%~nxF]]^) >> ..\SharedMedia_Prismatic\Prismatic.lua
)

echo    SOUND
echo.>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----->> ..\SharedMedia_Prismatic\Prismatic.lua
echo --   SOUND>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----->> ..\SharedMedia_Prismatic\Prismatic.lua
for %%F in (..\SharedMedia_Prismatic\sound\*.*) do (
echo       %%~nF
echo LSM:Register("sound", "%%~nF", [[Interface\Addons\SharedMedia_Prismatic\sound\%%~nxF]]^) >> ..\SharedMedia_Prismatic\Prismatic.lua
)

echo    STATUSBAR
echo.>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----->> ..\SharedMedia_Prismatic\Prismatic.lua
echo --   STATUSBAR>> ..\SharedMedia_Prismatic\Prismatic.lua
echo -- ----->> ..\SharedMedia_Prismatic\Prismatic.lua
for %%F in (..\SharedMedia_Prismatic\statusbar\*.*) do (
echo       %%~nF
echo LSM:Register("statusbar", "%%~nF", [[Interface\Addons\SharedMedia_Prismatic\statusbar\%%~nxF]]^) >> ..\SharedMedia_Prismatic\Prismatic.lua
)

:end_of_file
pause