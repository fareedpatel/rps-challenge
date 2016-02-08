require 'game'

describe Game do 
	subject(:game) { described_class.new(computer, player)}
	let(:computer) {double :computers_choice}
	let(:player)   {double :weapon}

	it 'stores computers choice of Rock, Paper, Scissors' do
		allow(computer).to receive(:choose_weapon).and_return :rock
		expect(game.computers_choice).to eq :rock
	end

	it 'stores players choice of Rock, Paper, Scissors' do 
		allow(player).to receive(:weapon).and_return :paper
		expect(game.players_choice).to eq :paper
	end
end