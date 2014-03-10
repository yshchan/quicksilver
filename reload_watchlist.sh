#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# reload_watchlist.sh

unlink ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist
rm -rf ~/.quicksilver/com.yashwantc.quicksilver.plist
ruby gen_plist.rb;
ln -s ~/.quicksilver/com.yashwantc.quicksilver.plist ~/Library/LaunchAgents