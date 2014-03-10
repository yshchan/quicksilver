#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# qs.sh

if [ $# -eq 0 ]; then
	echo "You need to provide an argument!"
else
	if [$1 == "--run"]; then
		bash ~/.quicksilver/qs/run.sh
	fi
	
	if [$1 == "--replist"]; then
		bash ~/.quicksilver/qs/reload_watchlist.sh
	fi
	
	if [$1 == "--hg"]; then
		bash ~/.quicksilver/qs/auto_hg.sh
	fi
	
	if [$1 == "--genplist"]; then
		bash ~/.quicksilver/qs/gen_plist.sh
	fi
fi