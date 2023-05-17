#!/usr/bin/env ruby
input = ARGV[0]

pattern = /hb?tn/
  matches=input.match(pattern)
if matches
  puts "match found :#{matches [0]}"
else
  puts "match not found"
end
