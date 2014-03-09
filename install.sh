#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# install.sh

git clone https://github.com/yshchan/quicksilver.git;

mv quicksilver ~/.quicksilver;
cd ~/.quicksilver;
touch watchlist.txt;
echo "~/.quicksilver/testFolder\n" > watchlist.txt;
ruby gen_plist.rb;
if [ -f "com.yashwantc.quicksilver.plist" ]; then
	ln -s ~/.quicksilver/com.yashwantc.quicksilver.plist ~/Library/LaunchAgents
	launchctl load ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist;
	echo "quicksilver is installed! You can find it at ~/.quicksilver";

	if [ -f "~/.quicksilver/testFile.txt" ]; then
		echo "Tip: Currently quicksilver only watches ~/.quicksilver/testFile.txt to make it watch another file edit the path name in com.yashwantc.quicksilver.plist and delete testFile.txt";
	fi
else 
	echo "Error: Couldn't find com.yashwantc.quicksilver.plist! Failed installation!";
fi
