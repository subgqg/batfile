@echo off

REM Portfolio Assignment batch file

:take_input
REM Prompt user for their choice of operation (Create, Rename, or Open)
@echo You can either make/open directory or rename one!
set /p input=Enter R or C or O according to your choice:

REM Check user input and call appropriate label
if "%input%"=="C" call :rootdir
if "%input%"=="R" call :rename
if "%input%"=="O" call :open

REM If input is invalid, prompt user again
if "%input%"=="" (
echo Wrong input, please enter correctly.
goto take_input
)

REM Create root directory
:rootdir
set /p dir=Enter the directory name:
set /p path=Enter the location where you want to keep the directory:

REM Change to specified location and create directory
cd %path%
mkdir %dir%
cd %dir%

REM Prompt user for sub-directory creation
@echo Do you want to create a sub-directory (yes/no)?
set /p choice=Enter your choice here:
if "%choice%"=="Yes" call :makesub
if "%choice%"=="No" (
echo You have finished making root directory. Thank you.
exit
)

REM Create sub-directory
:makesub
set /p subdir=Enter sub-directory name:
mkdir %subdir%
cd %subdir%

REM Prompt user for file creation
@echo Your sub-directory is also created!
@echo Do you want to make a file inside the sub-dir (yes/no)?
set /p choice2=Enter your choice here:
if "%choice2%"=="Yes" call :makefile
if "%choice2%"=="No" (
echo You have finished making sub-directory. Thank you.
exit
)

REM Create file
:makefile
set /p file=Enter the name of the file:
set /p content=Enter the content of the file:
echo %content% > %file%.txt
cd ....
echo Your file is created. Thank you.

REM Rename directory or file
:rename
set /p path=Enter the path of the directory or the file:
cd %path%
set /p oldname=Enter the name of the directory or file:
set /p newname=Enter the new name of the directory or the file:
ren %oldname% %newname%

REM Confirm completion of rename operation
@echo Your directory or file has been renamed!
echo Thank you for using the program!

REM Open directory
:open
set /p path=Enter the path of the directory:
start %path%

REM Confirm completion of open operation
@echo The directory has been opened!
echo Thank you for using the program!

pause
