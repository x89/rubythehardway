#!/usr/bin/env ruby
"""
Based on: https://www.codewars.com/kata/alphabetic-anagrams/train/ruby
Calculate the position in a sorted list of strings matching /[A-Z]{,25}/.
"""

require './test-framework/framework.rb'

def slow_mode(word)
  word.chars.permutation.uniq.sort
end

def listPosition(word)
    puts "Running for word: #{word}"
    slow_mode(word).each_with_index do |w, idx|
      #puts "#{idx+1}: #{w.join('')}"
      return idx+1 if word == w.join('')
    end
end

Test.describe('Anagram') do
  Test.it('Must return appropriate values for known inputs') do
    testValues = {
      'A' => 1,
      'ABAB' => 2,
      'AAAB' => 1,
      'BAAA' => 4,
      'QUESTION' => 24572,
      'BOOKKEEPER' => 10743
    }
    testValues.each do |key,value|
      Test.assert_equals(listPosition(key),
        value, 'Incorrect list position for: ' + key)
    end
  end
end
