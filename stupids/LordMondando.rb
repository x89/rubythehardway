require 'date'

expected_elections = 6
election_day = Date.parse("20#{expected_elections * 5 + 20}-05-07")
days_until_election = (election_day - Date.today).to_i

def public_takes_to_corbyn(days)
  result = "Labour are going to lose a general election"

  days.downto(1).each do |day|
    if rand(10000) == 1
      result = "Labour fucking won it!"
      break
    end
  end
  return result
end

puts public_takes_to_corbyn(days_until_election)
