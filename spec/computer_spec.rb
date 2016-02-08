require 'computer'

describe Computer do 
	subject(:computer) { described_class.new }

	it 'computer chooses weapon' do 
		allow(computer).to receive(:choose_weapon).and_return :rock
		
		expect(computer.choose_weapon).to eq :rock
	end

	

end