# Check if an entered year is a leap year.
# Written by: Rob Hilton

loop do
    year = nil
    puts "Enter a year: "
    input = gets.chomp
    year = Integer(input) rescue nil

    # Allow the user to get out of the loop
    if input == "quit"
        break
    elsif year.class != Integer
        puts "#{input} is not a valid year"
    elsif year < 0
        puts "#{year} is not a valid year" 
    elsif year % 4 != 0
        puts "#{year} is not a leap year."
    elsif year % 100 != 0
        puts "#{year} is a leap year."
    elsif year % 400 != 0
        puts "#{year} is not a leap year."
    else
        puts "#{year} is a leap year."
    end
end