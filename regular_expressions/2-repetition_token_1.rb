#!/usr/bin/env ruby
# Get the argument
input = ARGV[0]

# Define regular expression pattern
pattern = /(hbtn|htn)/

matches = input.scan(pattern)

# Print the matched results
puts  matches
