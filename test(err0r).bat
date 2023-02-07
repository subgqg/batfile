@echo off
TITLE Portfolio Assignment 
:take_input
@echo you can either make/open directory or rename one!!!!
set /p input = Enter R or C  or O according to your choice:
if %input%==C Call :rootdir Exit/b
if %input%==R Call :rename  Exit/b 
if "%input%"==""(
    echo wrong input please enter correctly.
    goto start
)
Call :take_input

:rootdir
set /p dir = Enter the directory name:
set /p path = enter the location where you want to keep ur directory:
if %dir% 
cd %path%
mkdir %directory%
cd %directory%
@echo Do you want to create sub directory(yes/no):
set /p choice = Enter your choice here :
if %choice% ==Yes Call :makesub
if %choice% ==No (
    echo You have finished making root directory.Thankyou
    exit
)
:makesub
set /p subdirectory = Enter subdirectory name: 
mkdir %subdirectory%
cd %subdirectory%
echo Your sub directory is also created!!!!
set /p Choice2 =Do you want to make file insite sub dir:
if %Choice2%==Yes Call :makefile
if %Choice2% ==No (
    echo You have finished making sub directory.Thankyou
    exit
)
:makefile(
set /p file=Enter the name of the file : 
set /p content=Enter the content of the file: 
echo %content% > %file%.txt
cd../..
echo Your file is created.Thankyou 
)
:rename(

set /p path=Enter the path of the directory or the file: 
cd %path%
set /p olddirectory=Enter the name of the directory or file: 
set /p newdirectory=Enter the new name of the directory or the file: 
ren %olddirectory% %newdirectory%
@echo Your directory or file has been renamed!
cd../..
@echo Thank you for using the program! 

)
