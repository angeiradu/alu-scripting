#!/usr/bin/env ruby
# Get the argument from the command line
text_string = ARGV[0]

# Define the regular expression pattern
pattern = /(htn|hbtn)/

# Match the pattern against the text string
matches = text_string.scan(pattern)

# Print the matched results
puts "Matched results: #{matches}"
