
cp bashrc ~/.bashrc

cp bash_aliases ~/.bash_aliases

cp profile ~/.profile

if [ -e ~/.emacs.d ]; then
    cp -fr emacs.d/* ~/.emacs.d
else
    cp -r emacs.d ~/.emacs.d    
fi

