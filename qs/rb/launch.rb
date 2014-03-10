#!/usr/bin/ruby
# Copyright (c) 2014 Yashwant Chauhan
# launch.rb
require 'rubygems'
require 'plist'

plist = Plist::parse_xml(open("#{Dir.home}/.quicksilver/com.yashwantc.quicksilver.plist"))
if plist
	paths = plist['WatchPaths']
	paths.each do |path|
		puts `bash ~/.quicksilver/qs/auto_vs.sh #{path}`
	end
else
	puts "plist is nil"
end
