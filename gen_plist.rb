#!/bin/ruby
# Copyright (c) 2014 Yashwant Chauhan
# gen_plist.rb
require 'plist'

watchlist = File.open("watchlist.txt", "rb").read
unless watchlist.empty?
	list = watchlist.split("\n")
	if list.any?
		plist = {"Label"=>"com.yashwantc.quicksilver.plist", "OnDemand"=>true, "Program"=>"~/.quicksilver/quicksilver.rb","WatchPaths"=>list}
		plist.to_plist
		File.open("com.yashwantc.quicksilver.plist", 'w+') {|f| f.write(plist.to_plist) }
		unless plist.nil? && File.exist?("com.yashwantc.quicksilver.plist")
			puts "Baked cake..."
		end
	end
end
