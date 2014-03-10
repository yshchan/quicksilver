#!/usr/bin/ruby
# Copyright (c) 2014 Yashwant Chauhan
# gen_plist.rb
require 'rubygems'
require 'plist'

watchlist = File.open("watchlist.txt", "rb").read
unless watchlist.empty?
	list = watchlist.split("\n")
	if list.any?
		plist = {"Label"=>"com.yashwantc.quicksilver.plist", "OnDemand"=>true, "EnableGlobbing"=>true, "ProgramArguments"=>["~/.rvm/rubies/ruby-2.0.0-p247/bin/ruby","~/.quicksilver/qs.rb"],"WatchPaths"=>list}
		plist.to_plist
		File.open("com.yashwantc.quicksilver.plist", 'w+') {|f| f.write(plist.to_plist) }
		unless plist.nil? && File.exist?("com.yashwantc.quicksilver.plist")
			puts "Baking cake..."
		end
	end
end
