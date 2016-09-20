if File.exist?($0)
  fh = open($0)
  print fh.read
  fh.close()
end
