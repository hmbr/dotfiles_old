#!/bin/bash

source /usr/local/Cellar/autoenv/0.1.0/activate.sh
[[ -s "/Users/hmbr/.rvm/scripts/rvm" ]] && source "/Users/hmbr/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export PATH=/usr/local/bin:/Developer/usr/bin:$HOME/.gem/ruby/1.8/bin:$PATH

#meus atalhos
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"



function setdsm() {
# add the current directory and the parent directory to PYTHONPATH
# sets DJANGO_SETTINGS_MODULE
export PYTHONPATH=$PYTHONPATH:$PWD/..
export PYTHONPATH=$PYTHONPATH:$PWD
if [ -z "$1" ]; then
        x=${PWD/\/[^\/]*\/}
        export DJANGO_SETTINGS_MODULE=$x.settings
else
        export DJANGO_SETTINGS_MODULE=$1
fi

echo "DJANGO_SETTINGS_MODULE set to $DJANGO_SETTINGS_MODULE"
}
