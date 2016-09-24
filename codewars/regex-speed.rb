long_string = 'uthao90e857fpudegcadf,389afdouelafdouelfdouegceoegcu' * 10000000

puts "Len: #{long_string.length}"

#long_string.gsub(/aoeui/i, '')
long_string.delete('aoeuiAOEUI')
