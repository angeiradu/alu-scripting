#!/usr/bin/env ruby
input = ARGV[0]

pattern = /^htb{n}$/
  matches=input.match(pattern)
if input =~ pattern
  puts "Input matches the pattern!"
else
  puts "Input does not match the pattern."
end
