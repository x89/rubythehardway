#!/usr/bin/env ruby
"""
Based on: https://www.codewars.com/kata/alphabetic-anagrams/train/ruby
Calculate the position in a sorted list of strings matching /[A-Z]{,25}/.
"""

require './test-framework/framework.rb'

# def slow_mode(word)
#   word.chars.permutation.uniq.sort
# end

class Integer
  def fac
    (1..self).reduce(1, :*)
  end
end

class String
  def sorted_char_array
    self.chars.sort
  end
end

def fast_mode(word)
  # First char repeat index
  word_count = word.chars.count - 1
  repeat_index_1 = word_count.fac
  start_index = word.sorted_char_array.index(word.chars[0])  # MINCE
  puts "First index: #{start_index * repeat_index_1}: "

end

def listPosition(word)
    puts "Running for word: #{word}"
    fast_mode(word)
end

Test.describe('Anagram') do
  Test.it('Must return appropriate values for known inputs') do
    testValues = {
      #'A' => 1,
      #'ABAB' => 2,
      #'AAAB' => 1,
      'BACDE' => 24,
      #'BAAA' => 4,
      #'QUESTION' => 24572,
      #'BOOKKEEPER' => 10743
    }
    testValues.each do |key,value|
      Test.assert_equals(listPosition(key),
        value, 'Incorrect list position for: ' + key)
    end
  end
end
