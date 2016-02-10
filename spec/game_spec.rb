require 'game'

describe Game do 
	subject(:game) { described_class.new(computer, player)}
	let(:computer) {double :computers_choice}
	let(:player)   {double :weapon}
	let(:player)	{double :win}
	let(:player)  {double :lose}
	let(:player)  {double :draw}



		it 'stores computers choice of Rock, Paper, Scissors' do
			allow(computer).to receive(:choose_weapon).and_return :rock
			expect(game.computers_choice).to eq :rock
		end

		it 'stores players choice of Rock, Paper, Scissors' do 
			allow(player).to receive(:weapon).and_return :paper
			expect(game.players_choice).to eq :paper
		end

	context 'example of player #winning!' do

		it 'player chooses rock, and computer chooses paper, player wins!' do
			allow(computer).to receive(:choose_weapon).and_return :rock
			allow(player).to receive(:weapon).and_return :paper
			allow(player).to receive(:win).and_return :win
			expect(game.win).to eq 'Player has won!'
		end

	end

	context 'example of player #losing!' do

		it 'player chooses paper, and computer chooses scissors, player loses!' do
			allow(computer).to receive(:choose_weapon).and_return :scissors
			allow(player).to receive(:weapon).and_return :paper
			allow(player).to receive(:lose).and_return :lose
			expect(game.lose).to eq 'Player has lost!'
		end
	end

	context 'example of player #drawing!' do

		it 'player chooses paper, and computer chooses scissors, player loses!' do
			allow(computer).to receive(:choose_weapon).and_return :scissors
			allow(player).to receive(:weapon).and_return :scissors
			allow(player).to receive(:draw).and_return :draw
			expect(game.draw).to eq 'Player has lost!'
		end

	end

end