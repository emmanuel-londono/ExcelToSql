# ExcelToSql
Python program which creates sql commands to create tables and insert data from excel files.

## How to use
- Create a folder named 'target' and load all excel files into it
- Create a separate folder named 'output'
- The program will run through each excel file to build CREATE TABLE and INSERT INTO statements with the given table data
- SQL statements will be generated and placed in ./output/db_config.sql

### future features
- run from the command line on a target directory
- repo will include target and output folders
