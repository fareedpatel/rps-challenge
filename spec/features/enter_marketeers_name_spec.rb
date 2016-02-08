feature 'Enter marketeers name' do
	scenario 'submitting names' do
		sign_in_and_play
		expect(page).to have_content 'Sam'
	end
end

