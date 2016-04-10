#!python
from os import listdir, system 
from os.path import isfile, join, expanduser
import os
import platform
# import shutil


current_dir = os.path.dirname(os.path.abspath(__file__))

dotfiles = ['vimrc', 'bashrc', 'latexmkrc']

vimfiles = [f for f in listdir('vimfiles') if isfile(join('vimfiles', f))]

home = expanduser("~")

# install doffile

platform_suffix = {'windows':'cygwin', 'linux':'linux'}
pf = platform.system().lower()
suffix = platform_suffix[pf]

for f in dotfiles:
    src_name = join(current_dir, f + '_' + suffix)
    dir_name = join( home, '.'+f)
    if isfile(dir_name):
        cmd = ['mv', dir_name, dir_name+'_bak']
        system(' '.join(cmd))
        # shutil.move(dir_name, dir_name+'_bak')
    system('ln -s '+src_name+' '+dir_name)

for f in vimfiles:
    src_name = join(current_dir, 'vimfiles/',f)
    dir_name = join( home, '.vim/'+f)
    if isfile(dir_name):
        cmd = ['mv', dir_name, dir_name+'_bak']
        system(' '.join(cmd))
        # shutil.move(dir_name, dir_name+'_bak')
    cmd = ['ln -s', src_name, dir_name]
    system(' '.join(cmd))
