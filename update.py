#!/bin/python3

import os


def update_git():
    os.system("git add . && git commit -m '🚀 Update $(date)'")
    os.system("git push")

if __name__ == "__main__":
    update_git()
