#!/usr/bin/env ruby

# Check if there is an argument provided
if ARGV.empty?
  puts "Usage: #{$0} <string>"
  exit 1
end

# Get the first command line argument
input_string = ARGV[0]

# Check if the input string matches the phone number pattern
if input_string.match?(/^\d{10}$/)
  puts input_string
else
  puts "No match"
end
