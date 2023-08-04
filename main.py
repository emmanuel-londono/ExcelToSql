from sql_types import sql_types
import pandas as pd
import os


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
                    pd.read_excel(f"./{folder_name}/{filename}"),
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
        new_name = "_".join(column.casefold().split(" ")).replace("'", "")
        column_strings.append(f"{new_name} {sql_types[str(datatype)]}")

    joined_column_strings = ",\n".join(column_strings)
    return f"CREATE TABLE {table_name} (\n{joined_column_strings}\n);"


def build_sql_statements(folder_name: str):
    all_frame_pairs = get_all_dataframe_pairs(folder_name)
    sql_commands = []

    for table_pair in all_frame_pairs:
        sql_commands.append(build_create_table(table_pair))

    return sql_commands


if __name__ == '__main__':
    try:
        with open("./output/db_config.sql", "w") as sql_config:
            for statement in build_sql_statements("./RespondDB"): # TODO: make this take a command line arg
                sql_config.write(statement + "\n")
    except IOError as e:
        print(e)

