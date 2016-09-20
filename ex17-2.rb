# Turn https://learnrubythehardway.org/book/ex17.html into one line.

# puts "Copying from #{ARGV[0]} to #{ARGV[1]}"
# puts "Hit enter to continue!"
#
# $stdin.gets

open(ARGV[1], 'w').write(open(ARGV[0]).read)
