#!/usr/bin/env ruby
input = ARVG[0]
pattern = /^(hbt+n)$/
matches = input.scan(pattern)
if matches = pattern
  puts matches[0]
