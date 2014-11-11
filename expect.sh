#!/usr/bin/expect -f

# a long timeout, to wait for the installation to complete without exiting
set timeout 120

# launch command
spawn bash /opt/installer.sh
# accept license, press q, say yes
expect -re "Welcome*"
send "yes\rqyes\r"
# ask path to install
expect "*anaconda\\] >>>"
send "/opt/anaconda/\r"
# put the path inside bashrc for root user
expect "*no\\] >>>"
send "yes\r"

interact