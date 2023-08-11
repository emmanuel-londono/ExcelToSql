from sql_types import sql_types
import pandas as pd
import os
import sys
from folderManipulation import create_folder_path, select_folder_path, successMessage, failureMessage


def get_working_directory():

    current_directory = os.getcwd()
    dist = "dist"

    if dist in current_directory :

        os.chdir('..')

        new_directory = os.getcwd()

        script_directory = new_directory

    else :

        script_directory = current_directory

    print(f"SCRIPT DIRECTORY {script_directory}")
    return script_directory

class DataFrameNamePair:
    """Stores a table dataframe with its original excel filename"""
    def __init__(self, data_frame: pd.DataFrame, name: str):
        self.data_frame = data_frame
        self.name = name
        
        

def get_all_dataframe_pairs(folder_name: str):
    """
    Creates dataframes from all excel files in target folder
    :param folder_name: name of target folder
    """
    try:
        all_excels = os.listdir(folder_name)
        all_dataframes = []
        

        for filename in all_excels:
            try:
                
                df_pair = DataFrameNamePair(
                    pd.read_excel(f"{folder_name}/{filename}"),
                    filename.split(".")[0]
                )
                all_dataframes.append(df_pair)
            except IsADirectoryError:
                # Skip if not an Excel file
                continue

        return all_dataframes
    except FileNotFoundError:
        raise IOError(f"folder {folder_name} not found")


def build_create_table(table_pair: DataFrameNamePair) -> str:
    column_strings = []
    table_name, table_frame = table_pair.name, table_pair.data_frame
    for column, datatype in zip(table_frame.columns, table_frame.dtypes):
        new_name = ("_".join(column.casefold()
                    .split(" "))
                    .replace("'", "")
                    .replace("(", "")
                    .replace(")", "")
                    .replace(":", "")
                    .replace("=", "_")
                    .replace(".", "_")
                    .replace("-", "_")
                    .replace("/", "_")
                    .replace(",", "_")
                    .replace("where", "location")) # where is a
        column_strings.append(f"{new_name} {sql_types[str(datatype)]}")

    joined_column_strings = ",\n".join(column_strings)
    return f"CREATE TABLE {table_name} (\n{joined_column_strings}\n);"


def build_insert_statements(table_pair: DataFrameNamePair) -> str:
    table_name, table_frame = table_pair.name, table_pair.data_frame
    row_strings = []

    for row in table_frame.values:
        all_values = []
        for (value, datatype) in zip(row, table_frame.dtypes):
            if pd.isna(value):
                all_values.append("NULL")
            elif datatype == 'object' or datatype == "datetime64[ns]":
                new_string = str(value).replace("'", "\'\'").replace("\\", "/")
                all_values.append(f"'{new_string}'")
            else:
                all_values.append(str(value))

        values_str = ",\n".join(all_values)
        row_strings.append(f"INSERT INTO {table_name}\nVALUES (\n{values_str}\n);")
    joined_row_strings = "\n".join(row_strings)
    return joined_row_strings


def build_sql_statements(folder_name: str) -> list[str]:
    all_frame_pairs = get_all_dataframe_pairs(folder_name)
    sql_commands = []

    for table_pair in all_frame_pairs:
        sql_commands.append(build_create_table(table_pair))
        if len(table_pair.data_frame.values):
            sql_commands.append(build_insert_statements(table_pair))

    return sql_commands


if __name__ == '__main__':
    try:
        wd = get_working_directory()
        create_folders = create_folder_path(wd)
        file_path = select_folder_path(wd)
        print(file_path)
        with open("./output/db_config.sql", "w", encoding="utf-8") as sql_config:
            for statement in build_sql_statements(file_path):  # TODO: make this take a command line arg
                if statement:
                    sql_config.write(statement + "\n")
        successMessage()
    except IOError as e:
        print(e)
        failureMessage()

