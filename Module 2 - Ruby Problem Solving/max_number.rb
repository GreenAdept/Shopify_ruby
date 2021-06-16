# Find the max of two numbers (I've used integers here as the instructions weren't entirely specific on whether floats were valid)
# Written by: Rob Hilton

first_number = nil
second_number = nil

while first_number.class != Integer
    puts "Enter a number: "
    first_number = Integer(gets) rescue nil
end

while second_number.class != Integer
    puts "Enter another number: "
    second_number = Integer(gets) rescue nil
end

puts "Max: #{first_number > second_number ? first_number : second_number}"