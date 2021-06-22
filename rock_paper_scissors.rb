puts "Rock Paper Scissors"
p1_wins = 0
p2_wins = 0
games = 3

choices = ["Paper", "Scissors", "Rock", "Quit"]

games.times do |x|
    print "Player 1 - Enter your selection: "
    p1 = gets.chomp
    unless choices.include?(p1.capitalize)
        puts "No cheaters! Only Rock, Paper or Scissors are allowed."
        redo
    end

    print "Player 2 - Enter your selection: "
    p2 = gets.chomp
    unless choices.include?(p2.capitalize)
        puts "No cheaters! Only Rock, Paper or Scissors are allowed."
        redo
    end

    break if p1.downcase == "quit" || p2.downcase == "quit"
    if p1 == p2
        puts "Tie!"
    elsif p1 == "Rock"
        if p2 == "Paper"
            puts "Paper covers rock."
            p2_wins += 1
        else
            puts "Rock crushes scissors."
            p1_wins += 1
        end
    elsif p1 == "Paper"
        if p2 == "Scissors"
            puts "Scissors cuts paper."
            p2_wins += 1
        else
            puts "Paper covers rock."
            p1_wins += 1
        end
    elsif p1 == "Scissors"
        if p2 == "Rock"
            puts "Rock crushes scissors."
            p2_wins += 1
        else
            puts "Scissors cuts paper."
            p1_wins += 1
        end
    end
end

if p1_wins == p2_wins
    puts "Tie!"
else
    p1_wins > p2_wins ? (puts "Player 1 wins.") : (puts "Player 2 wins.")
end