#!/bin/python3

from os import listxattr, system


list_of_files = ["bin/", "./.zshrc", "./.xinitrc", "./.vimrc", "./.gitconfig"]
list_of_destination = ["~/bin/*", "~/.zshrc", "~/.xinitrc", "~/.vimrc", "~/.gitconfig"]


def setup_system(list_of_files, list_of_destination):
    for i in range(len(list_of_files)):
        system(f"cp {list_of_files[i]} {list_of_destination[i]} -r")


if __name__ == "__main__":
    setup_system(list_of_files, list_of_destination)
