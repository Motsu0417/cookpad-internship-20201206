require 'time'

class Vote
    attr_reader :voter, :candidate, :vote_data
    def initialize(voter, candidate, vote_date = Time.new)
        @voter = voter
        @candidate = candidate
        @vote_date = vote_date
    end
end