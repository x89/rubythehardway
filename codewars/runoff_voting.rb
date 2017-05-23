# Based on https://www.codewars.com/kata/52996b5c99fdcb5f20000004/train/ruby
require './test-framework/framework.rb'

def runoff(votes)
  '''Takes an Array of Arrays in descending order of preference of candidates'''
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]

Test.assert_equals(runoff(voters), :ind)
