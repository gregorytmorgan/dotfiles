#!/bin/bash

TSTAMP=`/bin/date '+%Y-%m-%d.%s'`

DOT_ROOT=`/bin/pwd`

# work from home dir
cd ~

# bashrc
if [ -e .bashrc ] || [ -L .bashrc ]; then
    /bin/mv .bashrc .bashrc.$TSTAMP
    /usr/bin/diff $DOT_ROOT/bashrc .bashrc.$TSTAMP
fi
/bin/ln -s $DOT_ROOT/bashrc .bashrc 

# bash_aliases
if [ -e .bash_aliases ] || [ -L .bash_aliases ]; then
    /bin/mv .bash_aliases .bash_aliases.$TSTAMP
    /usr/bin/diff $DOT_ROOT/bash_aliases .bash_aliases.$TSTAMP
fi
/bin/ln -s $DOT_ROOT/bash_aliases .bash_aliases

# profile
if [ -e .profile ] || [ -L .profile ]; then
    /bin/mv .profile .profile.$TSTAMP
    /usr/bin/diff $DOT_ROOT/profile .profile.$TSTAMP
fi
/bin/ln -s $DOT_ROOT/profile .profile

# bash_logout
if [ -e .bash_logout ] || [ -L .bash_logout ]; then
    /bin/mv .bash_logout .bash_logout.$TSTAMP
    /usr/bin/diff $DOT_ROOT/bash_logout .bash_logout.$TSTAMP    
fi
/bin/ln -s $DOT_ROOT/bash_logout .bash_logout

# emacs
if [ -e .emacs.d ] || [ -L .emacs.d ]; then
    /bin/mv .emacs.d .emacs.d.$TSTAMP
    /usr/bin/diff -r -x auto-save-list $DOT_ROOT/emacs.d .emacs.d.$TSTAMP
fi
/bin/ln -s $DOT_ROOT/emacs.d .emacs.d


# docs
if [ -e docs ] || [ -L docs ]; then
    /bin/mv docs docs.$TSTAMP
    /usr/bin/diff -r -x auto-save-list $DOT_ROOT/docs docs.$TSTAMP
fi
/bin/ln -s $DOT_ROOT/docs docs

cd $DOT_ROOT

# end file



