#!/bin/python3

from os import system

dependencyes = []

files_to_copy = ["bin/*", "./.zshrc", "./.xinitrc", "./.vimrc", "./.gitconfig"]
destinations = ["~/bin/*", "~/.zshrc", "~/.xinitrc", "~/.vimrc", "~/.gitconfig"]


def install_yay():
    try:
        system("yay")
    except FileNotFoundError:
        system("pacman -S --needed git base-devel")
        system("git clone https://aur.archlinux.org/yay.git")
        system("cd yay; makepkg -si")


def update_system():
    system("yay -Syu")


def install_dependecies(list_of_dependecyes):
    for i in range(len(list_of_dependecyes)):
        system(f"yay -S {list_of_dependecyes[i]}")


def copy_files(list_of_files, list_of_destination):
    for i in range(len(list_of_files)):
        system(f"cp {list_of_files[i]} {list_of_destination[i]} -r")


if __name__ == "__main__":
    install_yay()
    update_system()
    install_dependecies(dependencyes)
    copy_files(files_to_copy, destinations)
