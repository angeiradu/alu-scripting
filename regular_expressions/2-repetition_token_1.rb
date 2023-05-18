#!/usr/bin/env ruby
# Accept one argument from the command line
input = ARGV[0]

# Define the regular expression pattern
pattern = /^(hbn|hbtn)$/

# Match the input against the pattern
if input.match?(pattern)
  puts "Match found: #{input}"
else
  puts "No match found for: #{input}"
end
