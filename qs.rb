#!/usr/bin/ruby
# Copyright (c) 2014 Yashwant Chauhan
# quicksilver.rb
require 'rubygems'
require 'plist'

plist = Plist::parse_xml(open("#{Dir.home}/.quicksilver/com.yashwantc.quicksilver.plist"))
if plist 
	paths = plist['WatchPaths']
	paths.each do |path| 
		puts `bash ~/.quicksilver/auto_hg.sh #{path}`
	end
else 
	puts "plist is nil"
end
