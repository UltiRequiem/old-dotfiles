#!/bin/python3

from os import system

dependencyes = [
    "neovim-nightly-bin",
    "go",
    "awesome-terminal-fonts",
    "base",
    "brave-bin",
    "bumblebee-status",
    "curl",
    "dmenu",
    "ffmpeg",
    "flameshot",
    "google-chrome-stable" "i3-gaps",
    "ligthdm",
    "ligthdm-gtk-greeter",
    "lsd",
    "neofetch",
    "nodejs",
    "npm",
    "picom",
    "pulseaudio",
    "pulseaudio-alsa",
    "rofi",
    "tar",
    "ttf-jetbrains-mono",
    "ttf-ms-mono",
    "ueberzug",
    "w3m",
    "xclip",
    "zoom",
    "zsh",
]

files_to_copy = ["bin/*", "./.zshrc", "./.xinitrc", "./.vimrc", "./.gitconfig"]
destinations = ["~/bin/*", "~/.zshrc", "~/.xinitrc", "~/.vimrc", "~/.gitconfig"]


def install_yay():
    try:
        system("yay")
    except FileNotFoundError:
        system("pacman -S --needed base-devel")
        system("git clone https://aur.archlinux.org/yay.git")
        system("cd yay; makepkg -si")


def update_system():
    system("yay -Syu")


def install_dependecies(list_of_dependecyes):
    for i in range(len(list_of_dependecyes)):
        system(f"yay -S {list_of_dependecyes[i]} --noconfirm")


def copy_files(list_of_files, list_of_destination):
    for i in range(len(list_of_files)):
        system(f"cp {list_of_files[i]} {list_of_destination[i]} -r")


if __name__ == "__main__":
    install_yay()
    update_system()
    install_dependecies(dependencyes)
    copy_files(files_to_copy, destinations)