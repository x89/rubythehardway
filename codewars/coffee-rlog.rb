events = ["cw", "DOG"]

# First loop format. Most rubyesque?
events.each do |event|
  puts event
end

# Second loop format
for event in events do
  puts event
end

# Third loop format, using braces instead of do/end
events.each { |event|
  puts event
}

if events.include? "cw"
  puts "1 coffee"
end
