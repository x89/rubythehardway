# Note for people of the future, there's a NATO dict in the ruby namespace

DICT = {
  'a' => 'Alfa', 'b' => 'Bravo', 'c' => 'Charlie', 'd' => 'Delta',
  'e' => 'Echo', 'f' => 'Foxtrot', 'g' => 'Golf', 'h' => 'Hotel',
  'i' => 'India', 'j' => 'Juliett', 'k' => 'Kilo', 'l' => 'Lima', 'm' => 'Mike',
  'n' => 'November', 'o' => 'Oscar', 'p' => 'Papa', 'q' => 'Quebec',
  'r' => 'Romeo', 's' => 'Sierra', 't' => 'Tango', 'u' => 'Uniform',
  'v' => 'Victor', 'w' => 'Whiskey', 'x' => 'Xray', 'y' => 'Yankee',
  'z' => 'Zulu', '!' => '!', '?' => '?', '.' => '.'
}

def to_nato(words)
  words.delete(' ').chars.each.map { |c| DICT[c.downcase] }.join(' ')
end

puts to_nato("Just another Ruby hacker!")
