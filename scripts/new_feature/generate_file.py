
import os


def create_file(filename: str, content: str):
    ## check if the file already exists
    if os.path.isfile(filename):
        print(f"\033[90m  \U0001F4C3 File '{filename}' already exists. Skipping creation.\033[0m")
        return
    
    # write the formatted string to a new file
    with open(filename, 'w') as f:
        f.write(content)
        print(f"\033[32m  \U0001F4C3 File '{filename}' created successfully.\033[0m")
