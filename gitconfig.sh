#!/bin/bash

git config --global user.name "Adam Kosiorek"
git config --global user.email kosiorek.adam@gmail.com
git config --global core.editor vim
git config --global merge.tool vimdiff
git config --global alias.report "log --pretty=format:'%h - %an %ad : %s' --author='Adam Kosiorek' --since=30.days -p"
git config --global push.default simple
git config --global credential.helper 'cache --timeout=3600'
