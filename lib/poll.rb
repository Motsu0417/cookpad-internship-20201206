require 'time'

class Poll
    class InvalidCandidateError < StandardError
    end

    class OutOfLimitError < StandardError
    end

    attr_reader :title, :candidates , :limit_date, :votes
    def initialize(title, candidates ,limit_date = nil)
        @title = title
        @candidates = candidates
        @limit_date = limit_date
        @votes = []
    end

    def add_vote(vote)
        unless candidates.include?(vote.candidate)
            raise InvalidCandidateError
        end
        unless limit_date == nil
            unless limit_date == vote.vote_data
                raise OutOfLimitError
            end
        end
        @votes.push(vote)
    end

    def count_votes
        @counter = {}
        candidates.each do |c|
            @counter.store(c, 0)
        end

        votes.each do |v|
            @counter[v.candidate] += 1
        end
        @counter.sort {|(k1, v1), (k2, v2)| v1 <=> v2 }.reverse.to_h
    end
end