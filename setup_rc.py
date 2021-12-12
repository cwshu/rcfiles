#!/usr/bin/env python
from __future__ import absolute_import, division, print_function
import subprocess as sp
import os

# get directory path
rc = os.path.dirname(os.path.abspath(__file__))
home = os.environ['HOME']

if 'XDG_CONFIG_HOME' in os.environ.keys():
    dot_config = os.environ['XDG_CONFIG_HOME']
else:
    dot_config = home + '/.config'

# do soft link for each config
def main():
    print("ln -s {rc}/home/.* {home}/".format(rc=rc, home=home))

    # .config/ and fish
    print("mkdir -p {dot_config}/".format(dot_config=dot_config))
    print("mv {dot_config}/fish {dot_config}/fish.old".format(dot_config=dot_config))
    print("ln -s {rc}/dot_config/fish {dot_config}/fish".format(rc=rc, dot_config=dot_config))

    # vim
    print("ln -s {rc}/vim {home}/.vim".format(rc=rc, home=home))
    print("ln -s {rc}/vim/init.vim {home}/.vimrc".format(rc=rc, home=home))
    print("ln -s {rc}/vim {dot_config}/nvim".format(rc=rc, dot_config=dot_config))

if __name__ == '__main__':
    main()
