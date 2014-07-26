class Democracy::SimpleCount
  def tally(ballots)
    counts = Hash.new(0)
    ballots.each do |ballot|
      cand = ballot.preferences.first unless ballot.preferences.empty?
      counts[cand] += 1 unless cand.nil?
    end
    counts
  end
end
