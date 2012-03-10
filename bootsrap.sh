#!/bin/bash
cd
rm -fr $HOME/dotfiles
git clone git@github.com:emileswarts/dotfiles.git "$HOME/dotfiles"
chown -R $USER dotfiles

for file in ` ls -a ~/dotfiles | grep -v '^\.\.$' |grep -v '^\.$' | grep -v '^README$' |grep -v '^compiz-settings.profile$' |grep -v '^gnome-terminal-conf.xml$' |grep -v '^bootstrap.sh$'`
do
    rm -f $HOME/$file
	ln -s "$HOME/dotfiles/$file" "$HOME/$file"
done
