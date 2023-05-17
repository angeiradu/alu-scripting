#!/usr/bin/env ruby
input = ARGV[0]

pattern = /^htb{n}$/
  matches=input.match(pattern)
if input =~ pattern
  print (matches[0])
