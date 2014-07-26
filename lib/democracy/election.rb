class Democracy::Election
  attr_reader :ballots, :candidates

  def initialize()
    @candidates = {}
    @ballots = {}
  end

  def nominate(candidate)
    @candidates[candidate.name] = candidate
  end

  def cast(ballot)
    @ballots[ballot.voter] = validated_ballot(ballot)
  end

  def tally(method)
    method.tally(@ballots)
  end

  private
  def validated_ballot(ballot)
    binding.pry
    ballot.preferences.select! { |cand| @candidate.keys.include? cand }
    ballot
  end
end
