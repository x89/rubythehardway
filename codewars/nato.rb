def to_nato(words)
  %w(! ? .).each { |c| NATO[c.to_sym] = c }
  words.delete(' ').chars.each.map { |c| NATO.fetch(c.downcase.to_sym) }.join(' ')
end
