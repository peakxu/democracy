class Democracy::Ballot
  attr_reader :voter, :preferences

  def initialize(voter, preferences)
    @voter = voter
    @preferences = preferences
  end
end
