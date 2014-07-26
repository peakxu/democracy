require_relative '../../lib/democracy/ballot'
require_relative '../../lib/democracy/candidate'
require_relative '../../lib/democracy/election'
require_relative '../../lib/democracy/simple_count'

module Democracy
  describe "simple election" do
    describe "tally" do
      it "returns count of election" do
        apple = Candidate.new(:apple, 'A round fruit')
        banana = Candidate.new(:banana, 'A long fruit')
        election = Election.new
        election.nominate(apple)
        election.nominate(banana)
        alice_vote = Ballot.new(:alice, [:apple])
        bob_vote = Ballot.new(:bob, [:banana])
        charles_vote = Ballot.new(:charles, [:apple, :banana])
        doug_vote = Ballot.new(:doug, [])
        election.cast(alice_vote)
        election.cast(bob_vote)
        election.cast(charles_vote)
        election.cast(doug_vote)

        expect( election.tally(SimpleCount.new) ).to eq( {} )
      end
    end
  end
end