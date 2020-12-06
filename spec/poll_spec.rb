require_relative '../lib/poll'

RSpec.describe Poll do
	it 'has a title and candidates' do
		poll = Poll.new('Awesome Poll',['Alice','Bob'])
		
		expect(poll.title).to eq 'Awesome Poll'
		expect(poll.candidates).to eq ['Alice','Bob']
		expect(poll.limit).to eq nil

		poll_2 = Poll.new("Fantastic Poll", ["Alice","Bob"], "2020/12/25")
		expect(poll_2.title).to eq 'Fantastic Poll'
		expect(poll_2.candidates).to eq ['Alice','Bob']
		expect(poll_2.limit).to eq "2020/12/25"
	end
end