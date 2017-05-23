# Based on https://www.codewars.com/kata/52996b5c99fdcb5f20000004/train/ruby
require './test-framework/framework.rb'

class Array
  def first_row
    self.map { |x| x[0] }
  end
end

def least_voted_candidate(votes)
  '''Return the candidate with the least votes.'''
  votes.first_row.min_by { |x| votes.first_row.count(x) }
end

def least_voted_array(votes)
  '''Returns an array of equal least votes.'''
  a = votes.first_row
  h = Hash[a.map { |x| [x, a.count(x)] }]
  min = h[least_voted_candidate(votes)]
  ret = Array.new
  h.each do |k,v|
    ret.push(k) if v == min
  end
  ret
end

def winner(votes)
  '''Takes an array and returns who it is if we have one, else false.'''
  count = Hash[votes.map { |x| [x, 0] }]
  to_win = votes.count.to_f / 2
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
  h = Hash[votes[0].map { |x| [x, 0] }]
  first_row = votes.first_row
  least_voted = least_voted_array(votes)
  votes.each_with_index do |vote,idx|
    vote.each do |v|
      h[v] += (first_row.count - vote.index(v))**50  # hax
    end
  end
  while not w = winner(votes.first_row)
    first_row = votes.first_row
    least_voted = least_voted_array(votes)
    return nil if least_voted[0] == nil
    votes.each_with_index do |vote,idx|
      least_voted.each do |v|
        vote.delete v
      end
    end
  end
  return h.max_by { |k,v| v }[0]
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]
Test.assert_equals(runoff(voters), :ind)

voters = [[:d, :a, :c, :e, :b],
          [:e, :d, :b, :c, :a],
          [:e, :a, :b, :c, :d],
          [:d, :e, :a, :b, :c],
          [:d, :b, :c, :e, :a]]
Test.assert_equals(runoff(voters), :d)

voters = [[:d, :a, :c, :b, :e],
          [:b, :d, :e, :c, :a],
          [:b, :c, :d, :e, :a],
          [:c, :d, :e, :a, :b],
          [:c, :e, :b, :a, :d]]
Test.assert_equals(runoff(voters), :c)

voters = [[:e, :c, :d, :b, :a],
          [:b, :e, :a, :c, :d],
          [:c, :e, :d, :a, :b],
          [:a, :d, :e, :b, :c],
          [:e, :d, :c, :a, :b]]
Test.assert_equals(runoff(voters), :e)

# Edge case for removing at the correct time
voters = [[:a, :c, :b, :d, :e],
          [:d, :c, :a, :b, :e],
          [:e, :b, :d, :a, :c],
          [:e, :a, :b, :c, :d],
          [:b, :c, :e, :a, :d]]
Test.assert_equals(runoff(voters), :e)

# Edge case for nil
voters = [[:a, :c, :d, :e, :b],
          [:e, :b, :d, :c, :a],
          [:d, :e, :c, :a, :b],
          [:c, :e, :d, :b, :a],
          [:b, :e, :a, :c, :d]]
Test.assert_equals(runoff(voters), nil)
