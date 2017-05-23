# Based on https://www.codewars.com/kata/52996b5c99fdcb5f20000004/train/ruby
require './test-framework/framework.rb'

class Array
  def first_row
    self.map { |x| x[0] }
  end
end

def least_voted_candidate(votes)
  '''Return the candidate with the least votes.'''
end

def winner(votes)
  '''Takes an array and returns who it is if we have one, else false.'''
  count = Hash[votes.map { |x| [x, 0] }]
  to_win = votes.count / 2
  votes.each do |vote|
      count[vote] += 1
      return vote if count[vote] >= to_win
  end
  return false
end

def runoff(votes)
  '''Takes an Array of Arrays in descending order of preference of candidates,
  returns the winning candidate via an AV style runnoff vote system (similar
  to Scottish council elections).'''
  votes.each do |vote|
    if w = winner(votes.first_row)
      return w
    end
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]

Test.assert_equals(runoff(voters), :ind)
