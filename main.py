from sql_types import sql_types
import pandas as pd
import os


class DataFrameNamePair:
    """Stores a table dataframe with its original excel filename"""
    def __init__(self, data_frame: pd.DataFrame, name: str):
        self.data_frame = data_frame
        self.name = name


def get_all_dataframes(folder_name: str):
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
                continue

        return all_dataframes
    except FileNotFoundError:
        print(f"folder {folder_name} not found")
        raise FileNotFoundError


def build_create_table(table_pair: DataFrameNamePair) -> str:
    column_strings = []
    table_name, table_frame = table_pair.name, table_pair.data_frame
    for column, datatype in zip(table_frame.columns, table_frame.dtypes):
        new_name = "_".join(column.casefold().split(" "))
        column_strings.append(f"{new_name} {sql_types[str(datatype)]}")

    joined_column_strings = ",\n".join(column_strings)
    return f"CREATE TABLE {table_name} (\n{joined_column_strings}\n);"


def build_sql_statements(folder_name: str):
    all_dataframes = get_all_dataframes(folder_name)
    for table_pair in all_dataframes:
        build_create_table(table_pair)


if __name__ == '__main__':
    try:
        build_sql_statements("./RespondD")  # TODO: make this take a command line arg
    except FileNotFoundError:
        pass

