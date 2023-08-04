from sql_types import sql_types
import pandas as pd
import os


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
                all_dataframes.append(pd.read_excel(f"./{folder_name}/{filename}"))
            except IsADirectoryError:
                continue

        return all_dataframes
    except FileNotFoundError:
        print(f"folder {folder_name} not found")
        return


def build_sql_config(folder_name: str):
    print(get_all_dataframes(folder_name))


if __name__ == '__main__':
    build_sql_config("./RespondDB")  # TODO: make this take a command line arg

