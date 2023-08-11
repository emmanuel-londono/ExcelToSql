import tkinter as tk
from tkinter import filedialog, messagebox

tkWindow = tk.Tk()
tkWindow.withdraw()

def message1 () : 
   return  messagebox.showinfo("ExcelToSQL: Message","First, load all excel files into the target folder. Then, press the 'Cancel' button.)  
def message2() :
   return messagebox.showinfo("ExcelToSQL: Message", "Now, select the target folder.") 
def successMessage():
     return messagebox.showinfo("ExcelToSQL: Success Message", "Check db_config.sql for the sql command list.") 
def failureMessage():
     return messagebox.showerror("ExcelToSQL: Failure Message", "Something went wrong. Please double check the existence of the target and output folder.") 
 
# Function to select a folder in the system
def create_folder_path(file_path : str):
   message1()
   filedialog.askopenfiles(mode='w', initialdir=f"{file_path}", title="Create Folder", filetypes=(("Xcel Files", "*.xlsx"), ("All Files", "*.*")))
   
def select_folder_path(file_path : str):
    message2()
    folder_path = filedialog.askdirectory(initialdir=f"{file_path}", title="Select target folder")
    return folder_path


  
