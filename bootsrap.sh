#!/bin/bash

echo "rm -fr ~/dotfiles"

echo "git clone git@github.com:emileswarts/dotfiles.git dotfiles"

for file in ` ls -a ~/dotfiles | grep -v '^\.\.$' |grep -v '^\.$' | grep -v '^README$' |grep -v '^compiz-settings.profile$' |grep -v '^gnome-terminal-conf.xml$' |grep -v '^bootstrap.sh$'`
do
    echo "rm -fr ~/$file"
	echo "ln -s ~/dotfiles/$file ~/$file"
done
