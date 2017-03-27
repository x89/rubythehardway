def decodeMorse(morseCode)
  morseCode.sub!(/^ {3,}(.*?)/, "\\1")
  words = morseCode.split('   ')
  string = ""
  words.each do |chars|
    string += chars.split(' ').map { |c| MORSE_CODE[c] }.join
    string += " "
  end
  string.chop
end
