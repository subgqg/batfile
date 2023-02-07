# BATCH

This is a batch file written in Windows Command Prompt that allows users to create or rename directories (folders) and files. The program has several functions (also known as "labels") that are called based on the user's input. The program prompts the user to enter either "R" (for rename), "C" (for create), or "O" (for open), and acts accordingly.

Here is a detailed explanation of each function in the program:

take_input:
This function prompts the user to enter either "R", "C", or "O" and calls the corresponding function based on the input.
If the user enters an empty string, an error message is displayed and the user is prompted to enter again.

rootdir:
This function prompts the user to enter a directory name and the location where they want to keep the directory.
The program then changes the current working directory to the specified location and creates the root directory with the given name.
The program then asks the user if they want to create a subdirectory and calls the "makesub" function if the answer is "yes".

makesub:
This function prompts the user to enter a subdirectory name and creates the subdirectory inside the root directory.
The program then changes the current working directory to the newly created subdirectory and asks the user if they want to create a file inside it.
If the answer is "yes", the program calls the "makefile" function.

makefile:
This function prompts the user to enter a file name and its content.
The program creates a file with the given name and content inside the subdirectory.
The program then changes the current working directory back to the root directory and displays a message that the file has been created.
rename:

This function prompts the user to enter the path and name of a directory or file they want to rename.
The program then changes the current working directory to the specified path and renames the directory or file to the new name specified by the user.
The program then changes the current working directory back to the root directory and displays a message that the directory or file has been renamed.
Overall, this program allows the user to easily create, open, and rename directories and files in a Windows environment.



