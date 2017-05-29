#!/usr/bin/env ruby
"""
Based on: https://www.codewars.com/kata/alphabetic-anagrams/train/ruby
Calculate the position in a sorted list of strings matching /[A-Z]{,25}/.
"""

require './test-framework/framework.rb'

def listPosition(word)
    #your code here
end

Test.describe('Anagram') do
  Test.it('Must return appropriate values for known inputs') do
    testValues = {'A' => 1, 'ABAB' => 2, 'AAAB' => 1, 'BAAA' => 4, 'QUESTION' => 24572, 'BOOKKEEPER' => 10743}
    testValues.each do |key,value|
      Test.assert_equals(listPosition(key), value, 'Incorrect list position for: ' + key)
    end
  end
end
