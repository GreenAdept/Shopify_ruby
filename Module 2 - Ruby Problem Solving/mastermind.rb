# MASTERMIND: The Game!
# # Written by: Rob Hilton

# Generate the new target value
lock = Array.new(4) {rand(1..6)}
guesses = 0

puts "MASTERMIND"

loop do
    # Get the user's next guess
    guess = nil
    while !(Integer(guess) rescue nil)
        print "Enter your guess: "
        guess = gets.chomp
    end

    guess = guess.split('')
    lock_copy = lock.dup

    # Figure out how many digits the player got in the right place. 
    #Remove them from the guess and working copy of the lock so that we don't double count them.
    num_correct = 0
    guess.each_with_index do |x,i|
        if x == lock_copy[i]
            lock_copy[i] = nil
            guess[i] = nil
            num_correct += 1
        end
    end

    # Figure out how many of the remaining digits in the guess are also in the lock.
    num_wrong_position = guess.uniq.select{ |x| x != nil}.collect{ |x| [guess.count(x), lock_copy.count(x)].min}.sum

    guesses += 1
    # End the game if they get it right
    if num_correct == lock.length
        break
    end

    # Display the number of digits that are correct and the number that are right but in the wrong position.
    puts "#{"X" * num_correct}#{"x" * num_wrong_position}"
end

puts "Congrats! You got it with #{guesses} guesses."