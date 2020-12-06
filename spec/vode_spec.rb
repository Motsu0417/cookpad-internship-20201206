require_relative '../lib/vote'

RSpec.describe Vote do
	it 'has a voter and candidate' do
		vote = Vote.new('Tanaka','Alice')
		
		expect(vote.voter).to eq 'Tanaka'
		expect(vote.candidate).to eq 'Alice'
	end
end