#!/usr/bin/env ruby
input = ARGV[0]

pattern = /^ht(b?)n$/
matches=input.match(pattern)
if matches = pattern
  print(input)
