#!/usr/bin/env ruby
input = ARVG[0]

pattern=/hbt{2,3}n/
  match = input.match(pattern)
if match
  puts "Match found: #{match[0]}"
else
  puts "No match found."
end
