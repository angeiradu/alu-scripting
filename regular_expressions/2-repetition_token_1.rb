#!/usr/bin/env ruby
input = ARGV[0]

pattern = /hb?tn/
  matches=input.match(pattern)
for match in matches
  print(#{matches[0]})
