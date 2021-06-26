lines = []

File.open("reviews.txt") do |review_file|
    lines = review_file.readlines
end

puts lines.length

relevant_lines = lines.find_all { |line| line.include?("Truncated") }
puts relevant_lines