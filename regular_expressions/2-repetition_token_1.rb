#!/usr/bin/env ruby
# Get the argument
input = ARGV[0]

# Define regular expression pattern
pattern = /(htn|hbtn)/

matches = input.scan(pattern)

# Print the matched results
puts  matches
