#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# install.sh

git clone https://github.com/yshchan/quicksilver.git
mv quicksilver ~/.quicksilver
cd ~/.quicksilver
touch watchlist.txt 
printf "~/.quicksilver/testFolder\n" > watchlist.txt
ruby ~/.quicksilver/qs/rb/gen_plist.rb
ln -s ~/.quicksilver/com.yashwantc.quicksilver.plist ~/Library/LaunchAgents
mv ~/.quicksilver/qs/qs.sh ~/.quicksilver/qs/qs
chmod 755 ~/.quicksilver/qs/qs
launchctl load ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist
echo "Quicksilver installed :)"
