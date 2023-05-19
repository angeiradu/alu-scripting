#!/usr/bin/env ruby
input = ARGV[0]
pattern = \[([\w\s+\-\(\)]+)\],\[(\+?\d+[\d\s\(\)\-]+)\],\[(\w+)\]
matches = input.scan(pattern)
puts matches[0]
