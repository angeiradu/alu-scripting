#!/usr/bin/env ruby
input = ARGV[0]
pattern = /(\h\b.)/
matches = input.scan(pattern)
puts matches[0]
