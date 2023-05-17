# Get the argument from the command line
input = ARGV[0]

# Define the regular expression
pattern = /School/

# Check if the input matches the pattern
if input =~ pattern
  puts "Input matches 'School'!"
else
  puts "Input does not match 'School'."
end

