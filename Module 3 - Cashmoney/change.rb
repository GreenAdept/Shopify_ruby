# Cashmoney: return the number of each type of coin to dispense for change
# Written by: Rob Hilton

# Get the amount of change to return. The amount needs to be a positive float.
input = 0.0
until input > 0.0
    print "How much change is owed? "
    input = gets.to_f * 100
end

coins = [
    ["toonie", 200], 
    ["loonie", 100],
    ["quarter", 25],
    ["dime", 10],
    ["nickel", 5]]

remaining = input.to_i
change = []
total_coins = 0
# For each type of coin (from largest to smallest), find out how many need to be dispensed and the
# call the block with the remainder for the next coin.
coins.each do |coin_name, val|
    num_coins = remaining / val
    # We're not dispensing pennies, but we need to round the nickels appropriately.
    num_coins += 1 if val == 5 && remaining.remainder(val) > 2
    total_coins += num_coins

    # The change array contains the number of coins of each type and the coin name, pluralized appropriately.
    change << "#{num_coins} #{coin_name}#{num_coins > 1 ? "s" : ''}" unless num_coins == 0
    remaining = remaining.remainder(val)
end

unless total_coins == 0
    s = "You need to dispense "
    change.each.with_index do |coin, index| 
        s += coin
        unless change.length == 1
            if index < change.length - 2
                s += ", "
            elsif index == change.length - 2
                s += " and "
            end
        end
    end
    s += "."
    puts s
else
    puts "You don't need to dispense change."
end
puts "Total coins: #{total_coins}"