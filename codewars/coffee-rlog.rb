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


def how_much_coffee(events)
  count = 0

  events.each do |event|
    if event.include? "cw"
      count += 1
    elsif event == "CW"
      count += 2
    elsif event.include? "cat"
      count += 1
    elsif event.include? "CAT"
      count += 2
    elsif event.include? "dog"
      count += 1
    elsif event.include? "DOG"
      count += 2
    end
  end

  if count > 3
    "You need extra sleep"
  else
    puts "You need #{count} coffees"
    return count
  end
end

puts how_much_coffee(events)
