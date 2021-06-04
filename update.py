#!/bin/python3

from os import listxattr, system
from datetime import date

list_of_files = ["~/bin/*","~/.zshrc","~/.xinitrc","~/.vimrc","~/.gitconfig"]
list_of_destination = ["bin/","./.zshrc","./.xinitrc","./.vimrc","./.gitconfig"]


def update_files(list_of_files,list_of_destination):
    for i in range(len(list_of_files)):
        system(f"cp {list_of_files[i]} {list_of_destination[i]} -r")


def update_git():
    system(f"git add . && git commit -m '🚀 Update {date.today()}'")
    system("git push")


if __name__ == "__main__":
    update_files(list_of_files,list_of_destination)
    update_git()
