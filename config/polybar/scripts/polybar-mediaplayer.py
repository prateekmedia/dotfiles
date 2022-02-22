#! /usr/bin/env python3

import subprocess

def truncate(name, trunclen):
    if len(name) > trunclen:
        name = name[:trunclen]
        name += '...'
        if ('(' in name) and (')' not in name):
            name += ')'
    return name

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


stdout, stderr = runcmd('playerctl metadata --format " {{ title }} - {{ artist }}"')
print(truncate(stdout, 20))
