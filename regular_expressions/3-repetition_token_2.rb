#!/usr/bin/env ruby
input = ARVG[0]
pattern = /(hb(t{1,5})n)/
matches = input.scan(pattern) 
#print macthed result
puts matches
