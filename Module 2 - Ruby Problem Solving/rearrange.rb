# Rearrange digits in an integer to form the largest possible number.
# Written by: Rob Hilton

# Get a valid integer from the user
number = nil
while !(Integer(number) rescue nil)
    puts "Enter a number: "
    number = gets
end

# Because of the -0 test case, we have to check the sign manually
if number[0] == '-'
    is_positive = false
    digits = Integer(number[1..-1]).abs.digits
    non_zeros = digits.find_all { |e| e > 0 }.sort
else
    is_positive = true
    digits = Integer(number).digits
end

if is_positive
    puts digits.sort.reverse.join('')
else
    # The largest possible negative number (ie. least negative) will be formed 
    # by the smallest non-zero digit followed by all of the zeros and then
    # the remaining non-zero digits in increasing order.
    puts "-#{non_zeros.shift()}#{"0"*digits.count(0)}#{non_zeros.sort.join('')}"
end