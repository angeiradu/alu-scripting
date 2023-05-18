#!/usr/bin/env ruby
input = ARGV[0]
pattern = /(\h . \n )/
matches = input.scan(pattern)
puts matches[0]
