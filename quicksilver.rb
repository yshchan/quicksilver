#!/bin/ruby
# Copyright (c) 2014 Yashwant Chauhan
# quicksilver.rb

puts "Quicksilver.rb launched!"

plist = Plist::parse_xml('~/.quicksilver/com.yashwantc.quicksilver')
paths = plist['WatchPaths']
paths.each do |path| 
	puts `bash ~/.quicksilver/auto_hg.sh #{path}`
end 