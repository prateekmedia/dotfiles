#! /usr/bin/env python3
# https://github.com/YingYoh09/polybar-mediaplayer

import subprocess

def runcmd(cmd):
    p = subprocess.Popen(cmd, shell=True , stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = p.communicate()
    return stdout[:-1].decode('UTF-8') , stderr


stdout, stderr = runcmd('playerctl status')

if stderr:
    print('')
    exit()

if stdout in ['Stopped']:
    print('')
elif stdout =='Paused':
       print('', end=' ')
else:
    print('', end=' ')

