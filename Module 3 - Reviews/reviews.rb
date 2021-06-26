lines = []

File.open("reviews.txt") do |review_file|
    lines = review_file.readlines
end

puts lines.length

relevant_lines = []

lines.each do |line|
    if line.include?("Truncated")
        relevant_lines << line
    end
end

puts relevant_lines