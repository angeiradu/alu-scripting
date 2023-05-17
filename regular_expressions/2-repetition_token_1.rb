#!/usr/bin/env ruby
input = ARGV[0]

pattern = /hb?tn/
  matches=input.match(pattern)
if matches
  puts "#{matches[0]}"
else
  puts "match not found"
end
