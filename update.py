#!/bin/python3

from os import system
from datetime import date

list_of_files = []


def update_files(list_of_files):
    pass


def update_git():
    system(f"git add . && git commit -m '🚀 Update {date.today()}'")
    system("git push")


if __name__ == "__main__":
    update_files(list_of_files)
    update_git()
