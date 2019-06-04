#!/bin/bash

#created by Rory Angus - 12Nov18


# Jupyter Notebook commands
# create a new screen to hold the commands
screen -d -m -S Jupyter
# execute the commands in the "" Add a new line character to sumilate pressing enter
# this creates a notebook that can run Python at the address http://127.0.0.1:8888/tree
screen -S Jupyter -p 0 -X stuff "jupyter notebook\n"

# MongoDB Screen commands
# create a new screen to hold the commands
screen -d -m -S MongoDB
# execute the commands in the "" Add a new line character to sumilate pressing enter
# This creates a mongoDB that can bee accessed at 127.0.0.1:27017
screen -S MongoDB -p 0 -X stuff "conda activate mongodb\n
mongod\n"


# screen manual https://www.gnu.org/software/screen/manual/screen.html
# use this website to change the screenrs file so that it is not resized when the window is connected to https://superuser.com/questions/374752/reattaching-screen-having-irssi-running-forces-window-resize
# this is the command to edit the file with write permissions
# sudo vim /etc/screenrc
# This lists the screens that have been created. As this is run mannualy it lets the user see that it was successful
screen -ls



## the following is a few instrcutions to get you started working with the screens ##
# (note: remove the '' from the commands. 
#
# help is found by 'ctrl+a' '?'

# typing 'screen -ls' porduces an output like this:
# There are screens on:
#         11010.MSREnv    (Detached)
#         21782.MongoDB   (Detached)
#         21775.Jupyter   (Detached)
# 3 Sockets in /var/run/screen/S-ec2-user.
#

# To attached to a screen use the following command and use the correct environment variable. For e.g.
# screen -dR 11010.MSREnv
# screen -dR 21782.MongoDB
# screen -dR 21775.Jupyter

# Once on the screen to return back you need to hit 'ctrl+a' followed by typing 'd'
# 'ctrl+a' 'd'
#
# To close the screen and terminate it. Type at the prompt
# 'exit'


