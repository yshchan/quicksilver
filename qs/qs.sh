#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# qs.sh

if [ -z $1]; then
  if [ $1 == "-l" || $1 == "--launch" ]; then
    ruby ~/.quicksilver/qs/rb/launch.rb
  fi
  if [ $1 == "-rw" || $1 == "--reload_watchlist" ]; then
    unlink ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist
    rm -rf ~/.quicksilver/com.yashwantc.quicksilver.plist
    ruby ~/.quicksilver/qs/rb/gen_plist.rb
    ln -s ~/.quicksilver/com.yashwantc.quicksilver.plist ~/Library/LaunchAgents
  fi
  if [ $1 == "-la" || $1 == "--launch_agent" ]; then
    echo "The agent is located at: ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist"
    # open ~/Library/LaunchAgents/com.yashwantc.quicksilver.plist
  fi
  if [ $1 == "-p" || $1 == "--path" ]; then
    echo "The Quicksilver directory is located at: ~/.quicksilver\n"
    # open ~/.quicksilver
  fi
else
  echo "Usage: qs [-l, -rw, -la, -p]\n"
fi
