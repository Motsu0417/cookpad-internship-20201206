class Poll
    attr_reader :title, :candidates , :limit
    def initialize(title, candidates ,limit = nil)
        @title = title
        @candidates = candidates
        @limit = limit
    end
end