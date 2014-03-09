#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# install.sh

git clone https://github.com/yshchan/quicksilver.git;

mv quicksilver ~/.quicksilver;
cd ~/.quicksilver;
touch watchlist.txt;
echo "~/.quicksilver/testFolder\n" > watchlist.txt;
ruby gen_plist.rb;
ln -s ~/.quicksilver/com.yashwantc.quicksilver.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist;
echo "quicksilver is installed! You can find it at ~/.quicksilver";
