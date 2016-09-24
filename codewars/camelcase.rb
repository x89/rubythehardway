
strings = [
  "the-world-is-not-enough",
  "Hey_to_you_Johnny"
]

strings.each do |s|
  s.gsub!(/[-_]([a-zA-Z])/) { $1.upcase }
  puts s
end
