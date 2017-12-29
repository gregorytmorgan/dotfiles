#
#
#

# open initial terminal on login, change to repos if available
if [ -d /home/$LOGNAME/dev/atpsa ]; then
    WORKDIR=--working-directory="/home/$LOGNAME/dev/atpsa"
else
    WORKDIR=""
fi

#/usr/bin/gnome-terminal --window-with-profile=Code $WORKDIR --geometry="+80+80"

if [ -d /home/$LOGNAME/dev/atpsaII ]; then
    WORKDIR=--working-directory="/home/$LOGNAME/dev/atpsaII"
else 
    WORKDIR=""
fi

#/usr/bin/gnome-terminal --window-with-profile=Code $WORKDIR --geometry="+160+160"

# end file
