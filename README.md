# ExcelToSql
Python program that builds sql commands from excel files.

## How to use
- Create a folder named 'target' and load all excel files into it
- Create a separate folder named 'output'
- The program will run through each excel file to build CREATE TABLE and INSERT INTO statements with the given table data
- SQL statements will be generated and placed in ./output/db_config.sql


### Creating an exe
- run ``conda install pyinstaller``
- run ``pyinstaller -F -w -i icon.ico ExcelToSQL.py``
- After running the above command, the executable file should be located in the newly created "dist" folder.

### future features
- run from the command line on a target directory

