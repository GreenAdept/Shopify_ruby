# Get two names from a person (first and last where culturally appropriate) and reverse them.
# Written by: Rob Hilton

puts "Input your first and last name: "
names = gets.chomp

puts "Hello #{names.split(' ').reverse.join(' ')}"