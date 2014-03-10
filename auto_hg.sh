#!/bin/bash
# Copyright (c) 2014, Yashwant Chauhan
# auto_hg.sh

REPO=$1;
if [[ -z "$REPO" ]]; then
	cd $REPO;
	if [ ! -d "$REPO/.hg" ]; then
		hg init;
		hg add;
		hg commit -m "updated $REPO";
fi