#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import subprocess as sp
import os

# get directory path
rc = os.path.dirname(os.path.abspath(__file__))
home = os.environ['HOME']

if os.environ.has_key('XDG_CONFIG_HOME'):
    xdg_config_home = os.environ['XDG_CONFIG_HOME']
else:
    xdg_config_home = home + '/.config'

# do soft link for each config
def main():
    print "ln -s {rc}/home/.* {home}/".format(rc=rc, home=home)
    print "ln -s {rc}/.config/fish {xdg_config_home}/fish".format(rc=rc, xdg_config_home=xdg_config_home)

    print "ln -s {rc}/vim {home}/.vim".format(rc=rc, home=home)
    print "ln -s {rc}/vim/init.vim {home}/.vimrc".format(rc=rc, home=home)
    print "ln -s {rc}/vim {xdg_config_home}/nvim".format(rc=rc, xdg_config_home=xdg_config_home)

if __name__ == '__main__':
    main()
