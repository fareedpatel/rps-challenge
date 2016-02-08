
require 'player'

	describe Player do
  subject(:sam) { described_class.new('sam') }


  	describe '#name' do
      it 'returns the name' do
      expect(sam.name).to eq 'sam'
    end
  end

    describe '#choice_of_weapon' do
      it 'allows player to choose Rock, Paper, Scissors' do
         expect(sam.choose_weapon("scissors")).to eq 'scissors'
      end 
    end



end



		# describe '#win' do 
		# 	it 'When I submit Rock, I am told that I have won' do
		# 		expect(sam.win).to eq described_class::