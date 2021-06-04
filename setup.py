#!/bin/python3

from os import system

dependencyes = []

files_to_copy = ["bin/", "./.zshrc", "./.xinitrc", "./.vimrc", "./.gitconfig"]
destinations = ["~/bin/*", "~/.zshrc", "~/.xinitrc", "~/.vimrc", "~/.gitconfig"]


def install_yay():
    try:
        system("yay")
    except FileNotFoundError:
        system("pacman -S --needed git base-devel")
        system("git clone https://aur.archlinux.org/yay.git")
        system("cd yay; makepkg -si")


def install_dependecies():
    pass


def copy_files(list_of_files, list_of_destination):
    for i in range(len(list_of_files)):
        system(f"cp {list_of_files[i]} {list_of_destination[i]} -r")


if __name__ == "__main__":
    install_yay()
    install_dependecies()
    copy_files(files_to_copy, destinations)
