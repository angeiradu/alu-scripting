#!/usr/bin/env ruby
input = ARVG[0]
pattern = /hbt{1,4}n/
matches = input.scan(pattern) 
#print macthed result
put matches
