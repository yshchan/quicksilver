#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# uninstall.sh

launchctl unload ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist; 
unlink ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist;
rm -rf ~/.quicksilver;
