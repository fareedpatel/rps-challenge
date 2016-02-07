feature 'Enter marketeers name' do
	scenario 'submitting names' do
		visit ('/')
		fill_in :marketeers_name, with: 'Sam'
		click_button 'Submit'
		expect(page).to have_content 'Sam'
	end
end

