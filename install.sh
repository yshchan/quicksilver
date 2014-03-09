#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# install.sh

git clone https://github.com/yshchan/quicksilver.git;

mv quicksilver ~/.quicksilver;
cd ~/.quicksilver;
touch watchlist.txt;
echo "~/.quicksilver/testFolder\n" > watchlist.txt;
echo "Wrote default watchlist.txt...";
ruby gen_plist.rb;
echo "Wrote LaunchAgent plist...";
ln -s ~/.quicksilver/com.yashwantc.quicksilver.plist ~/Library/LaunchAgents
echo "Created a symlink for plist...";
launchctl load ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist;
echo "Quicksilver set as LaunchAgent...";
echo "Quicksilver is installed! You can find it at ~/.quicksilver";
