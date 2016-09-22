# city to abbreviation
city = {
  'Aberdeen' => 'ABZ',
  'Dundee' => 'DUN',
  'Edinburgh' => 'EDI',
  'Glasgow' => 'GLA',
  'Inverness' => "INV"
}

# restaurants in each city
restaurant = {
  'ABZ' => 'Moonfish',
  'DUN' => 'Travelodge',
  'EDI' => 'Martin Wishart',
  'GLA' => 'La Lanterna',
  'INV' => 'Premier Inn'
}

# puts the restaurants in the cities
puts "Aberdeen city's best restaurant is #{restaurant['ABZ']}"
puts "The best place to eat in Edinburgh is #{restaurant['EDI']}"
puts "La Lanterna is in #{city['Glasgow']}"

# mess around
city.each do |cities,abbrev|
  food = restaurant[abbrev]
puts "#{cities} is known as #{abbrev} and its best restaurant is #{food}"
end

# use the reject function to reject restaurants with letter "m"
rejects = restaurant.reject {|a,b| b =~ /M.*/}

puts rejects
