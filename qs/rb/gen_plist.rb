#!/usr/bin/ruby
# Copyright (c) 2014 Yashwant Chauhan
# gen_plist.rb
require 'rubygems'
require 'plist'

watchlist = File.open("#{Dir.home}/.quicksilver/watchlist.txt","rb").read
unless watchlist.empty?
	list = watchlist.split("\n")
	if list.any?
		plist = {"Label"=>"com.yashwantc.quicksilver", "OnDemand"=>true, "StartInterval"=>60, "EnableGlobbing"=>true, "KeepAlive"=>true, "ProgramArguments"=>["~/.quicksilver/qs/qs","-l"],"WatchPaths"=>list}
		plist.to_plist
		File.open("com.yashwantc.quicksilver.plist", 'w+') {|f| f.write(plist.to_plist) }
	end
end
