#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import subprocess as sp
import os

rc_dir = os.path.dirname(os.path.abspath(__file__))
home_dir = os.environ['HOME']

print "ln -s {rc_dir}/home/.* {home}/".format(rc_dir=rc_dir, home=home_dir)
print "ln -s {rc_dir}/.config/fish {home}/.config/fish".format(rc_dir=rc_dir, home=home_dir)
print "ln -s {rc_dir}/.vim {home}/.vim".format(rc_dir=rc_dir, home=home_dir)
# sp.call("ln -s {rc_dir}/home/.* {home}/".format(rc_dir=rc_dir, home=home_dir), shell=True)
# sp.call("ln -s {rc_dir}/.config/fish {home}/.config/fish".format(rc_dir=rc_dir, home=home_dir), shell=True)

