# ExcelToSql
Python program that builds sql commands from excel files.

## How to use
- Load all excel files into the 'target' folder
- The program will run through each excel file to build CREATE TABLE and INSERT INTO statements with the given table data
- SQL statements will be generated and placed in the output folder: ./output/db_config.sql


### Creating an exe
- run ``conda install pyinstaller``
- run ``pyinstaller -F -w -i icon.ico ExcelToSQL.py``
- After running the above command, the executable file should be located in the newly created "dist" folder.

### future features
- run from the command line on a target directory

