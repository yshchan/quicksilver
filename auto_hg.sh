#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# auto_hg.sh

REPO="$1";
if [ -d "$REPO" ]; then
	cd $REPO;
	if [ ! -d "$REPO/.hg" ]; then
		printf "$REPO/.hg doesn't exist.\nCreating it...\n";
		hg init .;
		hg add .;
		hg commit -m "updated $REPO";
	else
		printf "$REPO/.hg exists.\nAdding changes...\n";
		hg add .;
		hg commit -m "updated $REPO";
	fi
else
	echo "Path not correct... ($REPO)";
fi
